class PaymentMethod {
  final int id;
  final String name;

  PaymentMethod({required this.id, required this.name});
}

List<PaymentMethod> dummyPayments = [
  PaymentMethod(id: 1, name: 'Bank Transfer'),
  PaymentMethod(id: 2, name: 'Bank Transfer 2'),
];
