class TermOfPayment {
  final int id;
  final String name;

  TermOfPayment({required this.id, required this.name});
}

List<TermOfPayment> dummyTermOfPayment = [
  TermOfPayment(id: 1, name: 'Bank Transfer'),
  TermOfPayment(id: 2, name: 'Bank Transfer 2'),
];