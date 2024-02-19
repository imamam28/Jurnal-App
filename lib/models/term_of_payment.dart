class TermOfPayment {
  final int id;
  final String name;

  TermOfPayment({required this.id, required this.name});
}

List<TermOfPayment> dummyTermOfPayment = [
  TermOfPayment(id: 1, name: 'Net 30'),
  TermOfPayment(id: 2, name: 'Net 15'),
  TermOfPayment(id: 3, name: 'Net 60'),
  TermOfPayment(id: 4, name: 'Cash on Delivery'),
  TermOfPayment(id: 5, name: 'Custom'),
];