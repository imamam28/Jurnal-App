import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:journal/models/coa.dart';
import 'package:journal/models/customer.dart';
import 'package:journal/models/expense.dart';
import 'package:journal/models/payment_method.dart';
import 'package:journal/models/serializer/datetime_serializer.dart';
import 'package:journal/models/term_of_payment.dart';

part 'add_expense_event.dart';
part 'add_expense_state.dart';
part 'add_expense_bloc.freezed.dart';

class AddExpenseBloc extends Bloc<AddExpenseEvent, AddExpenseState> {
  AddExpenseBloc() : super(AddExpenseState.initial()) {
    on<_UpdateTransactionDate>(
      (event, emit) => emit(state.copyWith(transactionDate: event.date)),
    );
    on<_UpdateDueDate>(
      (event, emit) => emit(state.copyWith(dueDate: event.date)),
    );
    on<_UpdateNoExpense>(
      (event, emit) => emit(state.copyWith(no: event.value)),
    );
    on<_UpdateCanPayLater>(
      (event, emit) => emit(state.copyWith(canPaylater: event.value)),
    );
    on<_UpdateShowOther>(
      (event, emit) => emit(state.copyWith(isShowOther: event.value)),
    );
    on<_UpdatePaymentMethod>(
      (event, emit) => emit(state.copyWith(paymentMethod: event.value)),
    );
    on<_UpdateTermOfPayment>(
      (event, emit) => emit(state.copyWith(termOfPayment: event.value)),
    );
    on<_UpdateCoA>(
      (event, emit) => emit(state.copyWith(coA: event.value)),
    );
    on<_UpdateCustomer>(
      (event, emit) => emit(state.copyWith(customer: event.value)),
    );
    on<_UpdateExpenses>(
      (event, emit) {
        emit(state.copyWith(status: AddExpenseStatus.loading));
        emit(state.copyWith(
          status: AddExpenseStatus.success,
          expenses: event.values,
        ));
      },
    );
  }
}
