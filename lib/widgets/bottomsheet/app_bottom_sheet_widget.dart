import 'dart:math';

import 'package:flutter/material.dart';

class AppBottomSheetBaseWidget extends StatefulWidget {
  const AppBottomSheetBaseWidget({
    super.key,
    this.title,
    this.subtitle,
    required this.sliverList,
    this.isSearchable = false,
    this.onSearched,
    required this.itemCount,
    this.onSubmitted,
    this.backgroundColor,
    this.isMaxHeightAtStart = false,
  });

  // define the title of the bottom sheet
  final String? title;

  // define the subtitle of the bottom sheet
  final String? subtitle;

  // SliverList containing the items
  final Widget sliverList;

  // define whether the items can be filtered or not
  final bool isSearchable;

  final void Function(String)? onSearched;

  // define the number of items inside sliver list
  final int itemCount;

  // callback for submit button (ok button disabled if null)
  final VoidCallback? onSubmitted;

  // allow bottomsheet to show at maximum height from the start
  final bool isMaxHeightAtStart;

  final Color? backgroundColor;

  @override
  State<AppBottomSheetBaseWidget> createState() =>
      _AppBottomSheetBaseWidgetState();
}

class _AppBottomSheetBaseWidgetState extends State<AppBottomSheetBaseWidget> {
  // screen height excluding statusbar
  double screenHeight = 0;
  // screen height excluding statusbar (in ratio)
  double screenHeightRatio = 0;

  // define default maximum sheet size (in ratio)
  double maxSheetSizeRatio = 0;

  // define default minimum sheet size (in ratio)
  double minSheetSizeRatio = 0;

  // define initial sheet size (in ratio)
  double initialSheetSizeRatio = 0;

  // bottom sheet's vertical padding (bottomsheet's top + sliverpadding's bottom)
  final double verticalPaddingHeight = 2 * 16;
  // handle height (incl. padding) + space below it
  final double handleHeight = 4 + (2 * 2) + 16;
  // title height + padding + space below it
  double titleHeight = 24 + (2 * 4) + 16;
  // title height  + space below it
  double subtitleHeight = 24 + 16;
  // searchfield height + space below it
  final double searchFieldHeight = 48 + 16;
  // list tile height (incl. padding)
  final double tileHeight = (24) + (2 * (16));
  // button's height (incl. padding) + (bottomnav's padding) + (bottomsheet's bottom)
  final double buttonHeight = 24 + (2 * 8) + (2 * 8) + 16;

  // current value of extent for the bottom sheet
  double sheetExtent = 0;

  // define the bottom sheet's border radius
  double borderRadius = 0;

  // whether the bottom sheet was popped due to going below minimum extend
  bool isPopped = false;

  bool isExtendedWithKeyboard = false;

  final DraggableScrollableController _draggableScrollableController =
      DraggableScrollableController();

  // used to check the condition of the length of the subtitle
  bool isLongerSubtitle = false;

  // used to get the width of the subtitle
  double subtitleWidth = 0;

  /// function to get the width of the text
  double getTextWidth(String text, TextStyle style) {
    final TextPainter textPainter =
        TextPainter(textDirection: TextDirection.ltr);
    textPainter.text = TextSpan(text: text, style: style);
    textPainter.layout();
    return textPainter.width;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxHeight = size.height;
    final maxWidth = size.width;
    screenHeight = maxHeight - 56;
    screenHeightRatio = (maxHeight - 56) / maxHeight;

    borderRadius = 18;

    subtitleWidth = getTextWidth(
        widget.subtitle ?? '',
        const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ));
    isLongerSubtitle = subtitleWidth > maxWidth;
    subtitleHeight = isLongerSubtitle ? subtitleHeight * 1.4 : subtitleHeight;

    if (widget.title == null) {
      titleHeight = 0;
    }
    if (widget.subtitle == null) {
      subtitleHeight = 0;
    }

    if (widget.sliverList is SliverToBoxAdapter) {
      maxSheetSizeRatio = 0.5;
      minSheetSizeRatio = 0.5;
    } else {
      maxSheetSizeRatio = min(
          (verticalPaddingHeight +
                  handleHeight +
                  (widget.title != null
                      ? titleHeight
                      : (widget.subtitle != null || widget.isSearchable
                          ? kToolbarHeight
                          : 0)) +
                  (widget.subtitle != null ? subtitleHeight : 0) +
                  (widget.isSearchable ? searchFieldHeight : 0) +
                  (widget.itemCount * tileHeight)) /
              maxHeight,
          screenHeightRatio);

      minSheetSizeRatio = (verticalPaddingHeight +
              handleHeight +
              (widget.title != null ? titleHeight : kToolbarHeight) +
              (widget.subtitle != null ? subtitleHeight : 0) +
              (widget.isSearchable ? searchFieldHeight : 0)) /
          maxHeight;
    }

    if (widget.isMaxHeightAtStart ||
        maxSheetSizeRatio < (0.75 * screenHeightRatio)) {
      initialSheetSizeRatio = maxSheetSizeRatio;
    } else {
      initialSheetSizeRatio = 0.5;
    }
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (DraggableScrollableNotification notification) {
        setState(() {
          if (notification.extent < sheetExtent) {
            FocusScope.of(context).unfocus();
          }

          sheetExtent = notification.extent;
          if (sheetExtent == screenHeightRatio) {
            borderRadius = 0;
          } else {
            borderRadius = 18;
          }
        });

        if (notification.extent <= notification.minExtent && !isPopped) {
          isPopped = true;
          Navigator.of(context).pop();
        }

        return true;
      },
      child: _buildPoppableGestureDetector(
        context,
        child: DraggableScrollableSheet(
          controller: _draggableScrollableController,
          initialChildSize: (widget.isSearchable && isKeyboardShowing)
              ? screenHeightRatio
              : initialSheetSizeRatio,
          maxChildSize: (widget.isSearchable && isKeyboardShowing)
              ? screenHeightRatio
              : maxSheetSizeRatio,
          minChildSize: minSheetSizeRatio,
          builder: (context, scrollController) {
            if (widget.isSearchable && isKeyboardShowing) {
              _draggableScrollableController.animateTo(
                screenHeightRatio,
                duration: const Duration(milliseconds: 125),
                curve: Curves.easeIn,
              );

              isExtendedWithKeyboard = true;
            } else if (isExtendedWithKeyboard) {
              if (scrollController.hasClients) {
                scrollController.jumpTo(0);
              }
              isExtendedWithKeyboard = false;
            }

            return Material(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(borderRadius),
              ),
              color: widget.backgroundColor ?? Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Scaffold(
                  backgroundColor: widget.backgroundColor ?? Colors.white,
                  body: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      if (widget.title != null ||
                          widget.subtitle != null ||
                          widget.isSearchable)
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.white,
                          collapsedHeight: () {
                            if (widget.isSearchable) {
                              return handleHeight +
                                  (widget.title != null ? titleHeight : 0) +
                                  (widget.subtitle != null
                                      ? subtitleHeight
                                      : 0) +
                                  searchFieldHeight;
                            } else if (widget.title != null) {
                              return handleHeight +
                                  titleHeight +
                                  (widget.subtitle != null
                                      ? subtitleHeight
                                      : 0);
                            } else if (widget.subtitle != null) {
                              return handleHeight +
                                  (widget.title != null ? titleHeight : 0) +
                                  (widget.subtitle != null
                                      ? subtitleHeight
                                      : 0);
                            }

                            return kToolbarHeight;
                          }(),
                          elevation: 7,
                          pinned: true,
                          shadowColor: Colors.black.withOpacity(0.3),
                          titleSpacing: 0,
                          flexibleSpace: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildResizeHandle(),
                              if (widget.title != null) ...[
                                const SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 24),
                                  child: SizedBox(
                                    height: 24,
                                    child: Text(
                                      widget.title!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              ],
                              if (widget.subtitle != null) ...[
                                SizedBox(
                                  height: (widget.title != null) ? 12 : 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Text(
                                    widget.subtitle!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                              if (widget.isSearchable) ...[
                                const SizedBox(height: 16),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  height: 48,
                                  child: TextField(
                                    onChanged: widget.onSearched,
                                    decoration: const InputDecoration(
                                      hintText: 'Search',
                                      prefixIcon: Icon(Icons.search),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ]
                            ],
                          ),
                        )
                      else
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                            ),
                            child: _buildResizeHandle(),
                          ),
                        ),
                      SliverPadding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        sliver: widget.sliverList,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  bool get isKeyboardShowing =>
      MediaQuery.of(context).viewInsets.bottom >
      (0.2 * MediaQuery.of(context).size.height);

  Widget _buildPoppableGestureDetector(BuildContext context,
      {required Widget child}) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }

  Widget _buildResizeHandle() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      width: double.infinity,
      child: Center(
        child: Container(
          height: 4,
          width: 48,
          decoration: const ShapeDecoration(
            color: Colors.grey,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
