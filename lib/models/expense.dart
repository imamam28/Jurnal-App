class Expense {
  int? expenseId;
  final int id;
  final String name;
  final String description;
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
}

List<Expense> dummyExpense = [
  Expense(id: 1, name: 'Cost of Sales', description: '5-50000'),
  Expense(id: 2, name: 'Purchase Discounts', description: '5-50100'),
  Expense(id: 3, name: 'Purchase Return', description: '5-50200'),
];
