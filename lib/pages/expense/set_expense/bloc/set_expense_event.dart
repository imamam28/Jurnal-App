part of 'set_expense_bloc.dart';

@freezed
class SetExpenseEvent with _$SetExpenseEvent {
  const factory SetExpenseEvent.load(List<Expense> expenses) = _Load;
  const factory SetExpenseEvent.removeExpense(int index) = _RemoveExpense;
  const factory SetExpenseEvent.updateTax(int index, Tax value) = _UpdateTax;
}