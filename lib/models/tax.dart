class Tax {
  final int id;
  final String name;

  Tax({required this.id, required this.name});
}

List<Tax> dummyTax = [
  Tax(id: 1, name: 'Bank Transfer'),
  Tax(id: 2, name: 'Bank Transfer 2'),
];