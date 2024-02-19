// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:journal/widgets/bottomsheet/app_bottom_sheet_widget.dart';

class AppBottomSheet<T> extends StatefulWidget {
  const AppBottomSheet({
    super.key,
    required this.context,
    this.title,
    this.subtitle,
    this.isSearchable = false,
    required this.items,
    required this.selectedItem,
    required this.itemLabelMapper,
    this.styleMapper,
    this.enabledMapper,
    this.leadingBuilder,
    this.trailingBuilder,
    this.initialSelectedIndex,
    this.onSelected,
    this.emptyMessage,
    this.isMaxHeightAtStart = false,
    this.isShowDivider = false,
    this.isPopAfterSelect = true,
  });

  final BuildContext context;
  final String? title;
  final String? subtitle;
  final bool isSearchable;
  final List<T> items;
  final T? selectedItem;
  final String Function(T item) itemLabelMapper;
  final TextStyle? Function(T item, TextStyle defaultStyle)? styleMapper;
  final bool Function(T item)? enabledMapper;
  final IndexedWidgetBuilder? leadingBuilder;
  final IndexedWidgetBuilder? trailingBuilder;
  final int? initialSelectedIndex;
  final void Function(T item, int index)? onSelected;
  final String? emptyMessage;
  final bool isMaxHeightAtStart;
  final bool isShowDivider;
  final bool isPopAfterSelect;

  @override
  _AppBottomSheetState<T> createState() => _AppBottomSheetState<T>();

  Future<T?> show() {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      builder: (context) => this,
    );
  }
}

class _AppBottomSheetState<T> extends State<AppBottomSheet<T>> {
  String? searchedValue;
  int? selectedIndex;

  List<T> get filteredItems {
    if (!widget.isSearchable) {
      return widget.items;
    }

    if (searchedValue == null) {
      return widget.items;
    }

    return widget.items.where(
      (T item) {
        return widget.itemLabelMapper(item).toLowerCase().contains(
              searchedValue!.toLowerCase(),
            );
      },
    ).toList();
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialSelectedIndex != null) {
      selectedIndex = widget.initialSelectedIndex!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBottomSheetBaseWidget(
      title: widget.title,
      subtitle: widget.subtitle,
      isSearchable: widget.isSearchable,
      onSearched: (String value) {
        setState(() {
          searchedValue = value;
        });
      },
      itemCount: filteredItems.length,
      isMaxHeightAtStart: widget.isMaxHeightAtStart,
      sliverList: filteredItems.isEmpty
          ? SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 56,
                  left: 8,
                  right: 8,
                ),
                child: Text(
                  widget.emptyMessage ??
                      'Pencarian tidak ditemukan, silakan gunakan kata kunci lain atau cari dari daftar',
                  maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  void onChanged(T? value) {
                    setState(() {
                      selectedIndex = index;
                    });

                    if (widget.isPopAfterSelect) {
                      Navigator.of(context).pop(value);
                    }
                    widget.onSelected!(value as T, index);
                  }

                  T value = filteredItems[index];
                  String label = widget.itemLabelMapper(filteredItems[index]);
                  bool enabled = (widget.enabledMapper ??
                      (_) => true)(filteredItems[index]);
                  TextStyle defaultTextStyle = const TextStyle(
                    color: Colors.black,
                  );

                  TextStyle textStyle;
                  if (!enabled) {
                    textStyle = defaultTextStyle.copyWith(color: Colors.grey);
                  } else if (widget.styleMapper != null) {
                    textStyle = widget.styleMapper!(
                            filteredItems[index], defaultTextStyle) ??
                        defaultTextStyle;
                  } else {
                    textStyle = defaultTextStyle;
                  }

                  return InkWell(
                    onTap: widget.onSelected != null && enabled
                        ? () {
                            onChanged(value);
                          }
                        : null,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                          border: widget.isShowDivider &&
                                  index != filteredItems.length - 1
                              ? const Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                  ),
                                )
                              : null),
                      child: Row(
                        children: <Widget>[
                          if (widget.leadingBuilder != null) ...[
                            DefaultTextStyle(
                              textHeightBehavior: const TextHeightBehavior(
                                leadingDistribution:
                                    TextLeadingDistribution.even,
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              child: widget.leadingBuilder!(context, index),
                            ),
                            const SizedBox(width: 16),
                          ],
                          Expanded(
                            child: Text(
                              label,
                              style: textStyle,
                              textHeightBehavior: const TextHeightBehavior(
                                leadingDistribution:
                                    TextLeadingDistribution.even,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          if (widget.trailingBuilder != null) ...[
                            DefaultTextStyle(
                              textHeightBehavior: const TextHeightBehavior(
                                leadingDistribution:
                                    TextLeadingDistribution.even,
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              child: widget.trailingBuilder!(context, index),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
                childCount: filteredItems.length,
              ),
            ),
    );
  }
}
