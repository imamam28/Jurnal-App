// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Expense> expenses) load,
    required TResult Function(int index) removeExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Expense> expenses)? load,
    TResult? Function(int index)? removeExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Expense> expenses)? load,
    TResult Function(int index)? removeExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_RemoveExpense value) removeExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_RemoveExpense value)? removeExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_RemoveExpense value)? removeExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetExpenseEventCopyWith<$Res> {
  factory $SetExpenseEventCopyWith(
          SetExpenseEvent value, $Res Function(SetExpenseEvent) then) =
      _$SetExpenseEventCopyWithImpl<$Res, SetExpenseEvent>;
}

/// @nodoc
class _$SetExpenseEventCopyWithImpl<$Res, $Val extends SetExpenseEvent>
    implements $SetExpenseEventCopyWith<$Res> {
  _$SetExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Expense> expenses});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$SetExpenseEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_$LoadImpl(
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl(final List<Expense> expenses) : _expenses = expenses;

  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'SetExpenseEvent.load(expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Expense> expenses) load,
    required TResult Function(int index) removeExpense,
  }) {
    return load(expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Expense> expenses)? load,
    TResult? Function(int index)? removeExpense,
  }) {
    return load?.call(expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Expense> expenses)? load,
    TResult Function(int index)? removeExpense,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_RemoveExpense value) removeExpense,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_RemoveExpense value)? removeExpense,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_RemoveExpense value)? removeExpense,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements SetExpenseEvent {
  const factory _Load(final List<Expense> expenses) = _$LoadImpl;

  List<Expense> get expenses;
  @JsonKey(ignore: true)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveExpenseImplCopyWith<$Res> {
  factory _$$RemoveExpenseImplCopyWith(
          _$RemoveExpenseImpl value, $Res Function(_$RemoveExpenseImpl) then) =
      __$$RemoveExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveExpenseImplCopyWithImpl<$Res>
    extends _$SetExpenseEventCopyWithImpl<$Res, _$RemoveExpenseImpl>
    implements _$$RemoveExpenseImplCopyWith<$Res> {
  __$$RemoveExpenseImplCopyWithImpl(
      _$RemoveExpenseImpl _value, $Res Function(_$RemoveExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveExpenseImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveExpenseImpl implements _RemoveExpense {
  const _$RemoveExpenseImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SetExpenseEvent.removeExpense(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveExpenseImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveExpenseImplCopyWith<_$RemoveExpenseImpl> get copyWith =>
      __$$RemoveExpenseImplCopyWithImpl<_$RemoveExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Expense> expenses) load,
    required TResult Function(int index) removeExpense,
  }) {
    return removeExpense(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Expense> expenses)? load,
    TResult? Function(int index)? removeExpense,
  }) {
    return removeExpense?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Expense> expenses)? load,
    TResult Function(int index)? removeExpense,
    required TResult orElse(),
  }) {
    if (removeExpense != null) {
      return removeExpense(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_RemoveExpense value) removeExpense,
  }) {
    return removeExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_RemoveExpense value)? removeExpense,
  }) {
    return removeExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_RemoveExpense value)? removeExpense,
    required TResult orElse(),
  }) {
    if (removeExpense != null) {
      return removeExpense(this);
    }
    return orElse();
  }
}

abstract class _RemoveExpense implements SetExpenseEvent {
  const factory _RemoveExpense(final int index) = _$RemoveExpenseImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveExpenseImplCopyWith<_$RemoveExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SetExpenseStatus status, List<Expense> expenses)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetExpenseInitialState value) initial,
    required TResult Function(SetExpenseLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetExpenseInitialState value)? initial,
    TResult? Function(SetExpenseLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetExpenseInitialState value)? initial,
    TResult Function(SetExpenseLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetExpenseStateCopyWith<$Res> {
  factory $SetExpenseStateCopyWith(
          SetExpenseState value, $Res Function(SetExpenseState) then) =
      _$SetExpenseStateCopyWithImpl<$Res, SetExpenseState>;
}

/// @nodoc
class _$SetExpenseStateCopyWithImpl<$Res, $Val extends SetExpenseState>
    implements $SetExpenseStateCopyWith<$Res> {
  _$SetExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetExpenseInitialStateImplCopyWith<$Res> {
  factory _$$SetExpenseInitialStateImplCopyWith(
          _$SetExpenseInitialStateImpl value,
          $Res Function(_$SetExpenseInitialStateImpl) then) =
      __$$SetExpenseInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetExpenseInitialStateImplCopyWithImpl<$Res>
    extends _$SetExpenseStateCopyWithImpl<$Res, _$SetExpenseInitialStateImpl>
    implements _$$SetExpenseInitialStateImplCopyWith<$Res> {
  __$$SetExpenseInitialStateImplCopyWithImpl(
      _$SetExpenseInitialStateImpl _value,
      $Res Function(_$SetExpenseInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetExpenseInitialStateImpl implements SetExpenseInitialState {
  const _$SetExpenseInitialStateImpl();

  @override
  String toString() {
    return 'SetExpenseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetExpenseInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SetExpenseStatus status, List<Expense> expenses)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetExpenseInitialState value) initial,
    required TResult Function(SetExpenseLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetExpenseInitialState value)? initial,
    TResult? Function(SetExpenseLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetExpenseInitialState value)? initial,
    TResult Function(SetExpenseLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SetExpenseInitialState implements SetExpenseState {
  const factory SetExpenseInitialState() = _$SetExpenseInitialStateImpl;
}

/// @nodoc
abstract class _$$SetExpenseLoadedStateImplCopyWith<$Res> {
  factory _$$SetExpenseLoadedStateImplCopyWith(
          _$SetExpenseLoadedStateImpl value,
          $Res Function(_$SetExpenseLoadedStateImpl) then) =
      __$$SetExpenseLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SetExpenseStatus status, List<Expense> expenses});
}

/// @nodoc
class __$$SetExpenseLoadedStateImplCopyWithImpl<$Res>
    extends _$SetExpenseStateCopyWithImpl<$Res, _$SetExpenseLoadedStateImpl>
    implements _$$SetExpenseLoadedStateImplCopyWith<$Res> {
  __$$SetExpenseLoadedStateImplCopyWithImpl(_$SetExpenseLoadedStateImpl _value,
      $Res Function(_$SetExpenseLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? expenses = null,
  }) {
    return _then(_$SetExpenseLoadedStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetExpenseStatus,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$SetExpenseLoadedStateImpl implements SetExpenseLoadedState {
  const _$SetExpenseLoadedStateImpl(
      {required this.status, required final List<Expense> expenses})
      : _expenses = expenses;

  @override
  final SetExpenseStatus status;
  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'SetExpenseState.loaded(status: $status, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetExpenseLoadedStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetExpenseLoadedStateImplCopyWith<_$SetExpenseLoadedStateImpl>
      get copyWith => __$$SetExpenseLoadedStateImplCopyWithImpl<
          _$SetExpenseLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SetExpenseStatus status, List<Expense> expenses)
        loaded,
  }) {
    return loaded(status, expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
  }) {
    return loaded?.call(status, expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SetExpenseStatus status, List<Expense> expenses)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(status, expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetExpenseInitialState value) initial,
    required TResult Function(SetExpenseLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetExpenseInitialState value)? initial,
    TResult? Function(SetExpenseLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetExpenseInitialState value)? initial,
    TResult Function(SetExpenseLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SetExpenseLoadedState implements SetExpenseState {
  const factory SetExpenseLoadedState(
      {required final SetExpenseStatus status,
      required final List<Expense> expenses}) = _$SetExpenseLoadedStateImpl;

  SetExpenseStatus get status;
  List<Expense> get expenses;
  @JsonKey(ignore: true)
  _$$SetExpenseLoadedStateImplCopyWith<_$SetExpenseLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
