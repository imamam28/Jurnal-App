import 'package:flutter/material.dart';

import 'tax.dart';

class Expense {
  int? expenseId;
  final int id;
  final String name;
  final String description;
  TextEditingController? noteController;
  TextEditingController? costController;
  Tax? tax;
  String note;
  double cost;

  Expense({
    this.expenseId,
    required this.id,
    required this.name,
    required this.description,
    this.cost = 0,
    this.note = '',
  });
  

  Expense copyWith({
    int? expenseId,
    int? id,
    String? name,
    String? description,
    TextEditingController? noteController,
    TextEditingController? costController,
    Tax? tax,
    String? note,
    double? cost,
  }) {
    return Expense(
      expenseId: expenseId ?? this.expenseId,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      note: note ?? this.note,
      cost: cost ?? this.cost,
    );
  }
}

List<Expense> dummyExpense = [
  Expense(id: 1, name: 'Cost of Sales', description: '5-50000'),
  Expense(id: 2, name: 'Purchase Discounts', description: '5-50100'),
  Expense(id: 3, name: 'Purchase Return', description: '5-50200'),
];
