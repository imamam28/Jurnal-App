part of 'set_expense_bloc.dart';

enum SetExpenseStatus { loading, loaded, update }

@freezed
class SetExpenseState with _$SetExpenseState {
  const factory SetExpenseState.initial() = SetExpenseInitialState;
  const factory SetExpenseState.loaded({
    required SetExpenseStatus status,
    required List<Expense> expenses,
  }) = SetExpenseLoadedState;
}
