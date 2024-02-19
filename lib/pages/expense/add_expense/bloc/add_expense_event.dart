part of 'add_expense_bloc.dart';

@freezed
class AddExpenseEvent with _$AddExpenseEvent {
  const factory AddExpenseEvent.updateTransactionDate(DateTime date) =
      _UpdateTransactionDate;
  const factory AddExpenseEvent.updateDueDate(DateTime date) =
      _UpdateDueDate;
  const factory AddExpenseEvent.updateNoExpense(String value) =
      _UpdateNoExpense;
  const factory AddExpenseEvent.updateCanPayLater(bool value) =
      _UpdateCanPayLater;
  const factory AddExpenseEvent.updatePaymentMethod(PaymentMethod value) =
      _UpdatePaymentMethod;
  const factory AddExpenseEvent.updateTermOfPayment(TermOfPayment value) =
      _UpdateTermOfPayment;
  const factory AddExpenseEvent.updateCoA(CoA value) =
      _UpdateCoA;
  const factory AddExpenseEvent.updateCustomer(Customer value) =
      _UpdateCustomer;
  const factory AddExpenseEvent.updateExpense(List<Expense> values) =
      _UpdateExpenses;
}
