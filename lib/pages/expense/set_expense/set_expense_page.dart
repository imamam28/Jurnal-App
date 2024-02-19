import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal/const/app_color.dart';

import 'package:journal/models/expense.dart';
import 'package:journal/pages/expense/set_expense/bloc/set_expense_bloc.dart';

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
                        )
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
