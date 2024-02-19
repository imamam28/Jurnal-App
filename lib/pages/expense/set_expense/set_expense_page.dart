import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal/const/app_color.dart';

import 'package:journal/models/expense.dart';
import 'package:journal/models/tax.dart';
import 'package:journal/pages/expense/set_expense/bloc/set_expense_bloc.dart';
import 'package:journal/utils/formatter/thousand_formatter.dart';
import 'package:journal/widgets/bottomsheet/app_bottom_sheet.dart';
import 'package:journal/widgets/form_widget.dart';

class SetExpensePage extends StatefulWidget {
  final List<Expense> currentExpenses;
  final Expense? newExpense;
  const SetExpensePage({
    super.key,
    required this.currentExpenses,
    this.newExpense,
  });

  @override
  State<SetExpensePage> createState() => _SetExpensePageState();
}

class _SetExpensePageState extends State<SetExpensePage> {
  @override
  void initState() {
    context.read<SetExpenseBloc>().add(SetExpenseEvent.load([
          ...widget.currentExpenses,
          if (widget.newExpense != null) ...[widget.newExpense!]
        ]));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text('Pilih biaya'),
        actions: [
          BlocBuilder<SetExpenseBloc, SetExpenseState>(
            builder: (context, state) {
              return TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppColor.white,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    (state as SetExpenseLoadedState).expenses,
                  );
                },
                child: const Text('Simpan'),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<SetExpenseBloc, SetExpenseState>(
        builder: (context, state) {
          if (state is SetExpenseInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SetExpenseLoadedState) {
            return ListView.separated(
              itemCount: state.expenses.length,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return Card(
                  color: AppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.expenses[index].name,
                              style: const TextStyle(
                                color: AppColor.accent,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context
                                    .read<SetExpenseBloc>()
                                    .add(SetExpenseEvent.removeExpense(index));
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                        TextField(
                          controller: state.expenses[index].noteController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Tulis deskripsi disini...',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: AppColor.grey.withOpacity(0.6)),
                          ),
                          onChanged: (value) =>
                              state.expenses[index].note = value,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.discount,
                              color: AppColor.grey,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Jumlah',
                              style: TextStyle(color: AppColor.grey),
                            ),
                            Expanded(
                              child: TextField(
                                controller:
                                    state.expenses[index].costController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) => state
                                    .expenses[index].cost = double.tryParse(
                                        value.replaceAll('.', '')) ??
                                    0,
                                textAlign: TextAlign.end,
                                inputFormatters: [ThousandTextInputFormatter()],
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        FormWidget(
                          icon: Icons.phone_android_sharp,
                          label: 'Pajak',
                          placeholder: '-',
                          value: state.expenses[index].tax?.name,
                          color: Colors.grey,
                          addPadding: false,
                          onTap: () {
                            AppBottomSheet<Tax>(
                              context: context,
                              title: 'Pilih Pajak',
                              items: dummyTax,
                              selectedItem: state.expenses[index].tax,
                              isShowDivider: true,
                              itemLabelMapper: (Tax item) => item.name,
                              onSelected: (item, taxIndex) {
                                context.read<SetExpenseBloc>().add(
                                    SetExpenseEvent.updateTax(index, item));
                              },
                              trailingBuilder: (context, taxIndex) {
                                Color color = dummyTax[taxIndex].id ==
                                        state.expenses[index].tax?.id
                                    ? AppColor.accent
                                    : AppColor.grey;
                                return Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                        color: color,
                                      )),
                                  child: Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                );
                              },
                            ).show();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
