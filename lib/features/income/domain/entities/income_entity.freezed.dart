// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IncomeEntity {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeEntityCopyWith<IncomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEntityCopyWith<$Res> {
  factory $IncomeEntityCopyWith(
          IncomeEntity value, $Res Function(IncomeEntity) then) =
      _$IncomeEntityCopyWithImpl<$Res, IncomeEntity>;
  @useResult
  $Res call(
      {String id,
      double amount,
      String source,
      DateTime date,
      String? note,
      DateTime createdAt,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IncomeEntityCopyWithImpl<$Res, $Val extends IncomeEntity>
    implements $IncomeEntityCopyWith<$Res> {
  _$IncomeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? source = null,
    Object? date = null,
    Object? note = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncomeEntityImplCopyWith<$Res>
    implements $IncomeEntityCopyWith<$Res> {
  factory _$$IncomeEntityImplCopyWith(
          _$IncomeEntityImpl value, $Res Function(_$IncomeEntityImpl) then) =
      __$$IncomeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double amount,
      String source,
      DateTime date,
      String? note,
      DateTime createdAt,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$IncomeEntityImplCopyWithImpl<$Res>
    extends _$IncomeEntityCopyWithImpl<$Res, _$IncomeEntityImpl>
    implements _$$IncomeEntityImplCopyWith<$Res> {
  __$$IncomeEntityImplCopyWithImpl(
      _$IncomeEntityImpl _value, $Res Function(_$IncomeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? source = null,
    Object? date = null,
    Object? note = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$IncomeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$IncomeEntityImpl extends _IncomeEntity {
  const _$IncomeEntityImpl(
      {required this.id,
      required this.amount,
      required this.source,
      required this.date,
      this.note,
      required this.createdAt,
      this.updatedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();

  @override
  final String id;
  @override
  final double amount;
  @override
  final String source;
  @override
  final DateTime date;
  @override
  final String? note;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IncomeEntity(id: $id, amount: $amount, source: $source, date: $date, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, source, date, note,
      createdAt, updatedAt, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeEntityImplCopyWith<_$IncomeEntityImpl> get copyWith =>
      __$$IncomeEntityImplCopyWithImpl<_$IncomeEntityImpl>(this, _$identity);
}

abstract class _IncomeEntity extends IncomeEntity {
  const factory _IncomeEntity(
      {required final String id,
      required final double amount,
      required final String source,
      required final DateTime date,
      final String? note,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final Map<String, dynamic>? metadata}) = _$IncomeEntityImpl;
  const _IncomeEntity._() : super._();

  @override
  String get id;
  @override
  double get amount;
  @override
  String get source;
  @override
  DateTime get date;
  @override
  String? get note;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IncomeEntityImplCopyWith<_$IncomeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
