// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduledExpenseModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(2)
  String get category => throw _privateConstructorUsedError;
  @HiveField(3)
  int get dayOfMonth =>
      throw _privateConstructorUsedError; // e.g., 5th of every month
  @HiveField(4)
  DateTime get nextRunDate => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get note => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduledExpenseModelCopyWith<ScheduledExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledExpenseModelCopyWith<$Res> {
  factory $ScheduledExpenseModelCopyWith(ScheduledExpenseModel value,
          $Res Function(ScheduledExpenseModel) then) =
      _$ScheduledExpenseModelCopyWithImpl<$Res, ScheduledExpenseModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) double amount,
      @HiveField(2) String category,
      @HiveField(3) int dayOfMonth,
      @HiveField(4) DateTime nextRunDate,
      @HiveField(5) String? note,
      @HiveField(6) bool isActive});
}

/// @nodoc
class _$ScheduledExpenseModelCopyWithImpl<$Res,
        $Val extends ScheduledExpenseModel>
    implements $ScheduledExpenseModelCopyWith<$Res> {
  _$ScheduledExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? category = null,
    Object? dayOfMonth = null,
    Object? nextRunDate = null,
    Object? note = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfMonth: null == dayOfMonth
          ? _value.dayOfMonth
          : dayOfMonth // ignore: cast_nullable_to_non_nullable
              as int,
      nextRunDate: null == nextRunDate
          ? _value.nextRunDate
          : nextRunDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduledExpenseModelImplCopyWith<$Res>
    implements $ScheduledExpenseModelCopyWith<$Res> {
  factory _$$ScheduledExpenseModelImplCopyWith(
          _$ScheduledExpenseModelImpl value,
          $Res Function(_$ScheduledExpenseModelImpl) then) =
      __$$ScheduledExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) double amount,
      @HiveField(2) String category,
      @HiveField(3) int dayOfMonth,
      @HiveField(4) DateTime nextRunDate,
      @HiveField(5) String? note,
      @HiveField(6) bool isActive});
}

/// @nodoc
class __$$ScheduledExpenseModelImplCopyWithImpl<$Res>
    extends _$ScheduledExpenseModelCopyWithImpl<$Res,
        _$ScheduledExpenseModelImpl>
    implements _$$ScheduledExpenseModelImplCopyWith<$Res> {
  __$$ScheduledExpenseModelImplCopyWithImpl(_$ScheduledExpenseModelImpl _value,
      $Res Function(_$ScheduledExpenseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? category = null,
    Object? dayOfMonth = null,
    Object? nextRunDate = null,
    Object? note = freezed,
    Object? isActive = null,
  }) {
    return _then(_$ScheduledExpenseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfMonth: null == dayOfMonth
          ? _value.dayOfMonth
          : dayOfMonth // ignore: cast_nullable_to_non_nullable
              as int,
      nextRunDate: null == nextRunDate
          ? _value.nextRunDate
          : nextRunDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'ScheduledExpenseModelAdapter')
class _$ScheduledExpenseModelImpl extends _ScheduledExpenseModel {
  _$ScheduledExpenseModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.amount,
      @HiveField(2) required this.category,
      @HiveField(3) required this.dayOfMonth,
      @HiveField(4) required this.nextRunDate,
      @HiveField(5) this.note,
      @HiveField(6) this.isActive = true})
      : super._();

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final double amount;
  @override
  @HiveField(2)
  final String category;
  @override
  @HiveField(3)
  final int dayOfMonth;
// e.g., 5th of every month
  @override
  @HiveField(4)
  final DateTime nextRunDate;
  @override
  @HiveField(5)
  final String? note;
  @override
  @JsonKey()
  @HiveField(6)
  final bool isActive;

  @override
  String toString() {
    return 'ScheduledExpenseModel(id: $id, amount: $amount, category: $category, dayOfMonth: $dayOfMonth, nextRunDate: $nextRunDate, note: $note, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledExpenseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dayOfMonth, dayOfMonth) ||
                other.dayOfMonth == dayOfMonth) &&
            (identical(other.nextRunDate, nextRunDate) ||
                other.nextRunDate == nextRunDate) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, category, dayOfMonth,
      nextRunDate, note, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledExpenseModelImplCopyWith<_$ScheduledExpenseModelImpl>
      get copyWith => __$$ScheduledExpenseModelImplCopyWithImpl<
          _$ScheduledExpenseModelImpl>(this, _$identity);
}

abstract class _ScheduledExpenseModel extends ScheduledExpenseModel {
  factory _ScheduledExpenseModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final double amount,
      @HiveField(2) required final String category,
      @HiveField(3) required final int dayOfMonth,
      @HiveField(4) required final DateTime nextRunDate,
      @HiveField(5) final String? note,
      @HiveField(6) final bool isActive}) = _$ScheduledExpenseModelImpl;
  _ScheduledExpenseModel._() : super._();

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  double get amount;
  @override
  @HiveField(2)
  String get category;
  @override
  @HiveField(3)
  int get dayOfMonth;
  @override // e.g., 5th of every month
  @HiveField(4)
  DateTime get nextRunDate;
  @override
  @HiveField(5)
  String? get note;
  @override
  @HiveField(6)
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ScheduledExpenseModelImplCopyWith<_$ScheduledExpenseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
