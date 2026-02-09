// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IncomeModel _$IncomeModelFromJson(Map<String, dynamic> json) {
  return _IncomeModel.fromJson(json);
}

/// @nodoc
mixin _$IncomeModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(2)
  String get source => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get note => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomeModelCopyWith<IncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeModelCopyWith<$Res> {
  factory $IncomeModelCopyWith(
          IncomeModel value, $Res Function(IncomeModel) then) =
      _$IncomeModelCopyWithImpl<$Res, IncomeModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) double amount,
      @HiveField(2) String source,
      @HiveField(3) DateTime date,
      @HiveField(4) String? note,
      @HiveField(5) DateTime createdAt,
      @HiveField(6) DateTime? updatedAt,
      @HiveField(7) Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IncomeModelCopyWithImpl<$Res, $Val extends IncomeModel>
    implements $IncomeModelCopyWith<$Res> {
  _$IncomeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$IncomeModelImplCopyWith<$Res>
    implements $IncomeModelCopyWith<$Res> {
  factory _$$IncomeModelImplCopyWith(
          _$IncomeModelImpl value, $Res Function(_$IncomeModelImpl) then) =
      __$$IncomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) double amount,
      @HiveField(2) String source,
      @HiveField(3) DateTime date,
      @HiveField(4) String? note,
      @HiveField(5) DateTime createdAt,
      @HiveField(6) DateTime? updatedAt,
      @HiveField(7) Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$IncomeModelImplCopyWithImpl<$Res>
    extends _$IncomeModelCopyWithImpl<$Res, _$IncomeModelImpl>
    implements _$$IncomeModelImplCopyWith<$Res> {
  __$$IncomeModelImplCopyWithImpl(
      _$IncomeModelImpl _value, $Res Function(_$IncomeModelImpl) _then)
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
    return _then(_$IncomeModelImpl(
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
@JsonSerializable()
class _$IncomeModelImpl extends _IncomeModel {
  const _$IncomeModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.amount,
      @HiveField(2) required this.source,
      @HiveField(3) required this.date,
      @HiveField(4) this.note,
      @HiveField(5) required this.createdAt,
      @HiveField(6) this.updatedAt,
      @HiveField(7) final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();

  factory _$IncomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomeModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final double amount;
  @override
  @HiveField(2)
  final String source;
  @override
  @HiveField(3)
  final DateTime date;
  @override
  @HiveField(4)
  final String? note;
  @override
  @HiveField(5)
  final DateTime createdAt;
  @override
  @HiveField(6)
  final DateTime? updatedAt;
  final Map<String, dynamic>? _metadata;
  @override
  @HiveField(7)
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IncomeModel(id: $id, amount: $amount, source: $source, date: $date, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, source, date, note,
      createdAt, updatedAt, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeModelImplCopyWith<_$IncomeModelImpl> get copyWith =>
      __$$IncomeModelImplCopyWithImpl<_$IncomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomeModelImplToJson(
      this,
    );
  }
}

abstract class _IncomeModel extends IncomeModel {
  const factory _IncomeModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final double amount,
      @HiveField(2) required final String source,
      @HiveField(3) required final DateTime date,
      @HiveField(4) final String? note,
      @HiveField(5) required final DateTime createdAt,
      @HiveField(6) final DateTime? updatedAt,
      @HiveField(7) final Map<String, dynamic>? metadata}) = _$IncomeModelImpl;
  const _IncomeModel._() : super._();

  factory _IncomeModel.fromJson(Map<String, dynamic> json) =
      _$IncomeModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  double get amount;
  @override
  @HiveField(2)
  String get source;
  @override
  @HiveField(3)
  DateTime get date;
  @override
  @HiveField(4)
  String? get note;
  @override
  @HiveField(5)
  DateTime get createdAt;
  @override
  @HiveField(6)
  DateTime? get updatedAt;
  @override
  @HiveField(7)
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IncomeModelImplCopyWith<_$IncomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
