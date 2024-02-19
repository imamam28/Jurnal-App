import 'dart:math';

import 'package:flutter/material.dart';
import 'package:journal/const/app_color.dart';
import 'package:journal/models/expense.dart';

class SelectExpensePage extends StatefulWidget {
  final List<Expense> currentExpenses;
  const SelectExpensePage({
    super.key,
    required this.currentExpenses,
  });

  @override
  State<SelectExpensePage> createState() => _SelectExpensePageState();
}

class _SelectExpensePageState extends State<SelectExpensePage> {
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
        title: const Text('Daftar Biaya'),
      ),
      body: ListView.separated(
        itemCount: dummyExpense.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              dummyExpense[index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.accent.shade700,
              ),
            ),
            subtitle: Text(
              dummyExpense[index].description,
              style: const TextStyle(
                color: AppColor.grey,
              ),
            ),
            onTap: () {
              Navigator.pop(
                  context,
                  dummyExpense[index]
                    ..expenseId = Random().nextInt(100000000) + 1);
            },
          );
        },
      ),
    );
  }
}
