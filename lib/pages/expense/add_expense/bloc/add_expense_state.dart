part of 'add_expense_bloc.dart';

enum AddExpenseStatus { initial, loading, success, error }

@freezed
class AddExpenseState with _$AddExpenseState {
  const AddExpenseState._();
  const factory AddExpenseState({
    @Default('') String no,
    @Default(AddExpenseStatus.initial) AddExpenseStatus status,
    Customer? customer,
    @DatetimeSerializer() required DateTime transactionDate,
    @DatetimeSerializer() DateTime? dueDate,
    @Default(false) bool canPaylater,
    @Default(false) bool isShowOther,
    PaymentMethod? paymentMethod,
    CoA? coA,
    TermOfPayment? termOfPayment,
    @Default([]) List<Expense> expenses,
  }) = _AddExpenseState;

  factory AddExpenseState.initial() =>
      _AddExpenseState(transactionDate: DateTime.now());

  double get total => expenses
      .map((e) => e.cost)
      .fold(0, (previous, current) => previous + current);
}
