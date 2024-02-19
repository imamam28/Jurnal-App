import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:journal/models/expense.dart';

part 'set_expense_event.dart';
part 'set_expense_state.dart';
part 'set_expense_bloc.freezed.dart';

class SetExpenseBloc extends Bloc<SetExpenseEvent, SetExpenseState> {
  SetExpenseBloc() : super(const SetExpenseInitialState()) {
    on<_Load>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 200));
      emit(
        SetExpenseState.loaded(
          status: SetExpenseStatus.loaded,
          expenses: event.expenses,
        ),
      );
    });
    on<_RemoveExpense>((event, emit) {
      SetExpenseLoadedState currenState = (state as SetExpenseLoadedState);
      emit(currenState.copyWith(status: SetExpenseStatus.update));
      List<Expense> expenses = currenState.expenses.toList();
      expenses.removeAt(event.index);
      emit(currenState.copyWith(status: SetExpenseStatus.loaded, expenses: expenses));
    });
  }
}
