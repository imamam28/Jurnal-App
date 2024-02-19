// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseEventCopyWith(
          AddExpenseEvent value, $Res Function(AddExpenseEvent) then) =
      _$AddExpenseEventCopyWithImpl<$Res, AddExpenseEvent>;
}

/// @nodoc
class _$AddExpenseEventCopyWithImpl<$Res, $Val extends AddExpenseEvent>
    implements $AddExpenseEventCopyWith<$Res> {
  _$AddExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTransactionDateImplCopyWith<$Res> {
  factory _$$UpdateTransactionDateImplCopyWith(
          _$UpdateTransactionDateImpl value,
          $Res Function(_$UpdateTransactionDateImpl) then) =
      __$$UpdateTransactionDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateTransactionDateImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateTransactionDateImpl>
    implements _$$UpdateTransactionDateImplCopyWith<$Res> {
  __$$UpdateTransactionDateImplCopyWithImpl(_$UpdateTransactionDateImpl _value,
      $Res Function(_$UpdateTransactionDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateTransactionDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionDateImpl implements _UpdateTransactionDate {
  const _$UpdateTransactionDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AddExpenseEvent.updateTransactionDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionDateImplCopyWith<_$UpdateTransactionDateImpl>
      get copyWith => __$$UpdateTransactionDateImplCopyWithImpl<
          _$UpdateTransactionDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateTransactionDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateTransactionDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateTransactionDate != null) {
      return updateTransactionDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateTransactionDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateTransactionDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateTransactionDate != null) {
      return updateTransactionDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransactionDate implements AddExpenseEvent {
  const factory _UpdateTransactionDate(final DateTime date) =
      _$UpdateTransactionDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$UpdateTransactionDateImplCopyWith<_$UpdateTransactionDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDueDateImplCopyWith<$Res> {
  factory _$$UpdateDueDateImplCopyWith(
          _$UpdateDueDateImpl value, $Res Function(_$UpdateDueDateImpl) then) =
      __$$UpdateDueDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateDueDateImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateDueDateImpl>
    implements _$$UpdateDueDateImplCopyWith<$Res> {
  __$$UpdateDueDateImplCopyWithImpl(
      _$UpdateDueDateImpl _value, $Res Function(_$UpdateDueDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateDueDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateDueDateImpl implements _UpdateDueDate {
  const _$UpdateDueDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AddExpenseEvent.updateDueDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDueDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDueDateImplCopyWith<_$UpdateDueDateImpl> get copyWith =>
      __$$UpdateDueDateImplCopyWithImpl<_$UpdateDueDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateDueDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateDueDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateDueDate != null) {
      return updateDueDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateDueDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateDueDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateDueDate != null) {
      return updateDueDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateDueDate implements AddExpenseEvent {
  const factory _UpdateDueDate(final DateTime date) = _$UpdateDueDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$UpdateDueDateImplCopyWith<_$UpdateDueDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoExpenseImplCopyWith<$Res> {
  factory _$$UpdateNoExpenseImplCopyWith(_$UpdateNoExpenseImpl value,
          $Res Function(_$UpdateNoExpenseImpl) then) =
      __$$UpdateNoExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateNoExpenseImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateNoExpenseImpl>
    implements _$$UpdateNoExpenseImplCopyWith<$Res> {
  __$$UpdateNoExpenseImplCopyWithImpl(
      _$UpdateNoExpenseImpl _value, $Res Function(_$UpdateNoExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateNoExpenseImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNoExpenseImpl implements _UpdateNoExpense {
  const _$UpdateNoExpenseImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AddExpenseEvent.updateNoExpense(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoExpenseImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoExpenseImplCopyWith<_$UpdateNoExpenseImpl> get copyWith =>
      __$$UpdateNoExpenseImplCopyWithImpl<_$UpdateNoExpenseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateNoExpense(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateNoExpense?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateNoExpense != null) {
      return updateNoExpense(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateNoExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateNoExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateNoExpense != null) {
      return updateNoExpense(this);
    }
    return orElse();
  }
}

abstract class _UpdateNoExpense implements AddExpenseEvent {
  const factory _UpdateNoExpense(final String value) = _$UpdateNoExpenseImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateNoExpenseImplCopyWith<_$UpdateNoExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCanPayLaterImplCopyWith<$Res> {
  factory _$$UpdateCanPayLaterImplCopyWith(_$UpdateCanPayLaterImpl value,
          $Res Function(_$UpdateCanPayLaterImpl) then) =
      __$$UpdateCanPayLaterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$UpdateCanPayLaterImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateCanPayLaterImpl>
    implements _$$UpdateCanPayLaterImplCopyWith<$Res> {
  __$$UpdateCanPayLaterImplCopyWithImpl(_$UpdateCanPayLaterImpl _value,
      $Res Function(_$UpdateCanPayLaterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateCanPayLaterImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateCanPayLaterImpl implements _UpdateCanPayLater {
  const _$UpdateCanPayLaterImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'AddExpenseEvent.updateCanPayLater(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCanPayLaterImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCanPayLaterImplCopyWith<_$UpdateCanPayLaterImpl> get copyWith =>
      __$$UpdateCanPayLaterImplCopyWithImpl<_$UpdateCanPayLaterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateCanPayLater(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateCanPayLater?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCanPayLater != null) {
      return updateCanPayLater(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateCanPayLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateCanPayLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCanPayLater != null) {
      return updateCanPayLater(this);
    }
    return orElse();
  }
}

abstract class _UpdateCanPayLater implements AddExpenseEvent {
  const factory _UpdateCanPayLater(final bool value) = _$UpdateCanPayLaterImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$UpdateCanPayLaterImplCopyWith<_$UpdateCanPayLaterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentMethodImplCopyWith<$Res> {
  factory _$$UpdatePaymentMethodImplCopyWith(_$UpdatePaymentMethodImpl value,
          $Res Function(_$UpdatePaymentMethodImpl) then) =
      __$$UpdatePaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod value});
}

/// @nodoc
class __$$UpdatePaymentMethodImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdatePaymentMethodImpl>
    implements _$$UpdatePaymentMethodImplCopyWith<$Res> {
  __$$UpdatePaymentMethodImplCopyWithImpl(_$UpdatePaymentMethodImpl _value,
      $Res Function(_$UpdatePaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdatePaymentMethodImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentMethodImpl implements _UpdatePaymentMethod {
  const _$UpdatePaymentMethodImpl(this.value);

  @override
  final PaymentMethod value;

  @override
  String toString() {
    return 'AddExpenseEvent.updatePaymentMethod(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentMethodImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentMethodImplCopyWith<_$UpdatePaymentMethodImpl> get copyWith =>
      __$$UpdatePaymentMethodImplCopyWithImpl<_$UpdatePaymentMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updatePaymentMethod(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updatePaymentMethod?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updatePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updatePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentMethod implements AddExpenseEvent {
  const factory _UpdatePaymentMethod(final PaymentMethod value) =
      _$UpdatePaymentMethodImpl;

  PaymentMethod get value;
  @JsonKey(ignore: true)
  _$$UpdatePaymentMethodImplCopyWith<_$UpdatePaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTermOfPaymentImplCopyWith<$Res> {
  factory _$$UpdateTermOfPaymentImplCopyWith(_$UpdateTermOfPaymentImpl value,
          $Res Function(_$UpdateTermOfPaymentImpl) then) =
      __$$UpdateTermOfPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TermOfPayment value});
}

/// @nodoc
class __$$UpdateTermOfPaymentImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateTermOfPaymentImpl>
    implements _$$UpdateTermOfPaymentImplCopyWith<$Res> {
  __$$UpdateTermOfPaymentImplCopyWithImpl(_$UpdateTermOfPaymentImpl _value,
      $Res Function(_$UpdateTermOfPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateTermOfPaymentImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TermOfPayment,
    ));
  }
}

/// @nodoc

class _$UpdateTermOfPaymentImpl implements _UpdateTermOfPayment {
  const _$UpdateTermOfPaymentImpl(this.value);

  @override
  final TermOfPayment value;

  @override
  String toString() {
    return 'AddExpenseEvent.updateTermOfPayment(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTermOfPaymentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTermOfPaymentImplCopyWith<_$UpdateTermOfPaymentImpl> get copyWith =>
      __$$UpdateTermOfPaymentImplCopyWithImpl<_$UpdateTermOfPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateTermOfPayment(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateTermOfPayment?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateTermOfPayment != null) {
      return updateTermOfPayment(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateTermOfPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateTermOfPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateTermOfPayment != null) {
      return updateTermOfPayment(this);
    }
    return orElse();
  }
}

abstract class _UpdateTermOfPayment implements AddExpenseEvent {
  const factory _UpdateTermOfPayment(final TermOfPayment value) =
      _$UpdateTermOfPaymentImpl;

  TermOfPayment get value;
  @JsonKey(ignore: true)
  _$$UpdateTermOfPaymentImplCopyWith<_$UpdateTermOfPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCoAImplCopyWith<$Res> {
  factory _$$UpdateCoAImplCopyWith(
          _$UpdateCoAImpl value, $Res Function(_$UpdateCoAImpl) then) =
      __$$UpdateCoAImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoA value});
}

/// @nodoc
class __$$UpdateCoAImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateCoAImpl>
    implements _$$UpdateCoAImplCopyWith<$Res> {
  __$$UpdateCoAImplCopyWithImpl(
      _$UpdateCoAImpl _value, $Res Function(_$UpdateCoAImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateCoAImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CoA,
    ));
  }
}

/// @nodoc

class _$UpdateCoAImpl implements _UpdateCoA {
  const _$UpdateCoAImpl(this.value);

  @override
  final CoA value;

  @override
  String toString() {
    return 'AddExpenseEvent.updateCoA(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCoAImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCoAImplCopyWith<_$UpdateCoAImpl> get copyWith =>
      __$$UpdateCoAImplCopyWithImpl<_$UpdateCoAImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateCoA(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateCoA?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCoA != null) {
      return updateCoA(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateCoA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateCoA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCoA != null) {
      return updateCoA(this);
    }
    return orElse();
  }
}

abstract class _UpdateCoA implements AddExpenseEvent {
  const factory _UpdateCoA(final CoA value) = _$UpdateCoAImpl;

  CoA get value;
  @JsonKey(ignore: true)
  _$$UpdateCoAImplCopyWith<_$UpdateCoAImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCustomerImplCopyWith<$Res> {
  factory _$$UpdateCustomerImplCopyWith(_$UpdateCustomerImpl value,
          $Res Function(_$UpdateCustomerImpl) then) =
      __$$UpdateCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer value});
}

/// @nodoc
class __$$UpdateCustomerImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateCustomerImpl>
    implements _$$UpdateCustomerImplCopyWith<$Res> {
  __$$UpdateCustomerImplCopyWithImpl(
      _$UpdateCustomerImpl _value, $Res Function(_$UpdateCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateCustomerImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$UpdateCustomerImpl implements _UpdateCustomer {
  const _$UpdateCustomerImpl(this.value);

  @override
  final Customer value;

  @override
  String toString() {
    return 'AddExpenseEvent.updateCustomer(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCustomerImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCustomerImplCopyWith<_$UpdateCustomerImpl> get copyWith =>
      __$$UpdateCustomerImplCopyWithImpl<_$UpdateCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateCustomer(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateCustomer?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomer implements AddExpenseEvent {
  const factory _UpdateCustomer(final Customer value) = _$UpdateCustomerImpl;

  Customer get value;
  @JsonKey(ignore: true)
  _$$UpdateCustomerImplCopyWith<_$UpdateCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExpensesImplCopyWith<$Res> {
  factory _$$UpdateExpensesImplCopyWith(_$UpdateExpensesImpl value,
          $Res Function(_$UpdateExpensesImpl) then) =
      __$$UpdateExpensesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Expense> values});
}

/// @nodoc
class __$$UpdateExpensesImplCopyWithImpl<$Res>
    extends _$AddExpenseEventCopyWithImpl<$Res, _$UpdateExpensesImpl>
    implements _$$UpdateExpensesImplCopyWith<$Res> {
  __$$UpdateExpensesImplCopyWithImpl(
      _$UpdateExpensesImpl _value, $Res Function(_$UpdateExpensesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$UpdateExpensesImpl(
      null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$UpdateExpensesImpl implements _UpdateExpenses {
  const _$UpdateExpensesImpl(final List<Expense> values) : _values = values;

  final List<Expense> _values;
  @override
  List<Expense> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'AddExpenseEvent.updateExpense(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpensesImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExpensesImplCopyWith<_$UpdateExpensesImpl> get copyWith =>
      __$$UpdateExpensesImplCopyWithImpl<_$UpdateExpensesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) updateTransactionDate,
    required TResult Function(DateTime date) updateDueDate,
    required TResult Function(String value) updateNoExpense,
    required TResult Function(bool value) updateCanPayLater,
    required TResult Function(PaymentMethod value) updatePaymentMethod,
    required TResult Function(TermOfPayment value) updateTermOfPayment,
    required TResult Function(CoA value) updateCoA,
    required TResult Function(Customer value) updateCustomer,
    required TResult Function(List<Expense> values) updateExpense,
  }) {
    return updateExpense(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? updateTransactionDate,
    TResult? Function(DateTime date)? updateDueDate,
    TResult? Function(String value)? updateNoExpense,
    TResult? Function(bool value)? updateCanPayLater,
    TResult? Function(PaymentMethod value)? updatePaymentMethod,
    TResult? Function(TermOfPayment value)? updateTermOfPayment,
    TResult? Function(CoA value)? updateCoA,
    TResult? Function(Customer value)? updateCustomer,
    TResult? Function(List<Expense> values)? updateExpense,
  }) {
    return updateExpense?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? updateTransactionDate,
    TResult Function(DateTime date)? updateDueDate,
    TResult Function(String value)? updateNoExpense,
    TResult Function(bool value)? updateCanPayLater,
    TResult Function(PaymentMethod value)? updatePaymentMethod,
    TResult Function(TermOfPayment value)? updateTermOfPayment,
    TResult Function(CoA value)? updateCoA,
    TResult Function(Customer value)? updateCustomer,
    TResult Function(List<Expense> values)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTransactionDate value)
        updateTransactionDate,
    required TResult Function(_UpdateDueDate value) updateDueDate,
    required TResult Function(_UpdateNoExpense value) updateNoExpense,
    required TResult Function(_UpdateCanPayLater value) updateCanPayLater,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTermOfPayment value) updateTermOfPayment,
    required TResult Function(_UpdateCoA value) updateCoA,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_UpdateExpenses value) updateExpense,
  }) {
    return updateExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult? Function(_UpdateDueDate value)? updateDueDate,
    TResult? Function(_UpdateNoExpense value)? updateNoExpense,
    TResult? Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult? Function(_UpdateCoA value)? updateCoA,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_UpdateExpenses value)? updateExpense,
  }) {
    return updateExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTransactionDate value)? updateTransactionDate,
    TResult Function(_UpdateDueDate value)? updateDueDate,
    TResult Function(_UpdateNoExpense value)? updateNoExpense,
    TResult Function(_UpdateCanPayLater value)? updateCanPayLater,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTermOfPayment value)? updateTermOfPayment,
    TResult Function(_UpdateCoA value)? updateCoA,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_UpdateExpenses value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(this);
    }
    return orElse();
  }
}

abstract class _UpdateExpenses implements AddExpenseEvent {
  const factory _UpdateExpenses(final List<Expense> values) =
      _$UpdateExpensesImpl;

  List<Expense> get values;
  @JsonKey(ignore: true)
  _$$UpdateExpensesImplCopyWith<_$UpdateExpensesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddExpenseState {
  String get no => throw _privateConstructorUsedError;
  AddExpenseStatus get status => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  @DatetimeSerializer()
  DateTime get transactionDate => throw _privateConstructorUsedError;
  @DatetimeSerializer()
  DateTime? get dueDate => throw _privateConstructorUsedError;
  bool get canPaylater => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  CoA? get coA => throw _privateConstructorUsedError;
  TermOfPayment? get termOfPayment => throw _privateConstructorUsedError;
  List<Expense> get expenses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddExpenseStateCopyWith<AddExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseStateCopyWith(
          AddExpenseState value, $Res Function(AddExpenseState) then) =
      _$AddExpenseStateCopyWithImpl<$Res, AddExpenseState>;
  @useResult
  $Res call(
      {String no,
      AddExpenseStatus status,
      Customer? customer,
      @DatetimeSerializer() DateTime transactionDate,
      @DatetimeSerializer() DateTime? dueDate,
      bool canPaylater,
      PaymentMethod? paymentMethod,
      CoA? coA,
      TermOfPayment? termOfPayment,
      List<Expense> expenses});
}

/// @nodoc
class _$AddExpenseStateCopyWithImpl<$Res, $Val extends AddExpenseState>
    implements $AddExpenseStateCopyWith<$Res> {
  _$AddExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? status = null,
    Object? customer = freezed,
    Object? transactionDate = null,
    Object? dueDate = freezed,
    Object? canPaylater = null,
    Object? paymentMethod = freezed,
    Object? coA = freezed,
    Object? termOfPayment = freezed,
    Object? expenses = null,
  }) {
    return _then(_value.copyWith(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddExpenseStatus,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canPaylater: null == canPaylater
          ? _value.canPaylater
          : canPaylater // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      coA: freezed == coA
          ? _value.coA
          : coA // ignore: cast_nullable_to_non_nullable
              as CoA?,
      termOfPayment: freezed == termOfPayment
          ? _value.termOfPayment
          : termOfPayment // ignore: cast_nullable_to_non_nullable
              as TermOfPayment?,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExpenseStateImplCopyWith<$Res>
    implements $AddExpenseStateCopyWith<$Res> {
  factory _$$AddExpenseStateImplCopyWith(_$AddExpenseStateImpl value,
          $Res Function(_$AddExpenseStateImpl) then) =
      __$$AddExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String no,
      AddExpenseStatus status,
      Customer? customer,
      @DatetimeSerializer() DateTime transactionDate,
      @DatetimeSerializer() DateTime? dueDate,
      bool canPaylater,
      PaymentMethod? paymentMethod,
      CoA? coA,
      TermOfPayment? termOfPayment,
      List<Expense> expenses});
}

/// @nodoc
class __$$AddExpenseStateImplCopyWithImpl<$Res>
    extends _$AddExpenseStateCopyWithImpl<$Res, _$AddExpenseStateImpl>
    implements _$$AddExpenseStateImplCopyWith<$Res> {
  __$$AddExpenseStateImplCopyWithImpl(
      _$AddExpenseStateImpl _value, $Res Function(_$AddExpenseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? status = null,
    Object? customer = freezed,
    Object? transactionDate = null,
    Object? dueDate = freezed,
    Object? canPaylater = null,
    Object? paymentMethod = freezed,
    Object? coA = freezed,
    Object? termOfPayment = freezed,
    Object? expenses = null,
  }) {
    return _then(_$AddExpenseStateImpl(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddExpenseStatus,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canPaylater: null == canPaylater
          ? _value.canPaylater
          : canPaylater // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      coA: freezed == coA
          ? _value.coA
          : coA // ignore: cast_nullable_to_non_nullable
              as CoA?,
      termOfPayment: freezed == termOfPayment
          ? _value.termOfPayment
          : termOfPayment // ignore: cast_nullable_to_non_nullable
              as TermOfPayment?,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$AddExpenseStateImpl extends _AddExpenseState {
  const _$AddExpenseStateImpl(
      {this.no = '',
      this.status = AddExpenseStatus.initial,
      this.customer,
      @DatetimeSerializer() required this.transactionDate,
      @DatetimeSerializer() this.dueDate,
      this.canPaylater = false,
      this.paymentMethod,
      this.coA,
      this.termOfPayment,
      final List<Expense> expenses = const []})
      : _expenses = expenses,
        super._();

  @override
  @JsonKey()
  final String no;
  @override
  @JsonKey()
  final AddExpenseStatus status;
  @override
  final Customer? customer;
  @override
  @DatetimeSerializer()
  final DateTime transactionDate;
  @override
  @DatetimeSerializer()
  final DateTime? dueDate;
  @override
  @JsonKey()
  final bool canPaylater;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final CoA? coA;
  @override
  final TermOfPayment? termOfPayment;
  final List<Expense> _expenses;
  @override
  @JsonKey()
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'AddExpenseState(no: $no, status: $status, customer: $customer, transactionDate: $transactionDate, dueDate: $dueDate, canPaylater: $canPaylater, paymentMethod: $paymentMethod, coA: $coA, termOfPayment: $termOfPayment, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseStateImpl &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.canPaylater, canPaylater) ||
                other.canPaylater == canPaylater) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.coA, coA) || other.coA == coA) &&
            (identical(other.termOfPayment, termOfPayment) ||
                other.termOfPayment == termOfPayment) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      no,
      status,
      customer,
      transactionDate,
      dueDate,
      canPaylater,
      paymentMethod,
      coA,
      termOfPayment,
      const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      __$$AddExpenseStateImplCopyWithImpl<_$AddExpenseStateImpl>(
          this, _$identity);
}

abstract class _AddExpenseState extends AddExpenseState {
  const factory _AddExpenseState(
      {final String no,
      final AddExpenseStatus status,
      final Customer? customer,
      @DatetimeSerializer() required final DateTime transactionDate,
      @DatetimeSerializer() final DateTime? dueDate,
      final bool canPaylater,
      final PaymentMethod? paymentMethod,
      final CoA? coA,
      final TermOfPayment? termOfPayment,
      final List<Expense> expenses}) = _$AddExpenseStateImpl;
  const _AddExpenseState._() : super._();

  @override
  String get no;
  @override
  AddExpenseStatus get status;
  @override
  Customer? get customer;
  @override
  @DatetimeSerializer()
  DateTime get transactionDate;
  @override
  @DatetimeSerializer()
  DateTime? get dueDate;
  @override
  bool get canPaylater;
  @override
  PaymentMethod? get paymentMethod;
  @override
  CoA? get coA;
  @override
  TermOfPayment? get termOfPayment;
  @override
  List<Expense> get expenses;
  @override
  @JsonKey(ignore: true)
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
