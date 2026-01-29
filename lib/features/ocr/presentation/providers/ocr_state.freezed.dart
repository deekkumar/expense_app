// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroceryOCRState {
  bool get isScanning => throw _privateConstructorUsedError;
  List<GroceryItem> get scannedItems => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroceryOCRStateCopyWith<GroceryOCRState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryOCRStateCopyWith<$Res> {
  factory $GroceryOCRStateCopyWith(
          GroceryOCRState value, $Res Function(GroceryOCRState) then) =
      _$GroceryOCRStateCopyWithImpl<$Res, GroceryOCRState>;
  @useResult
  $Res call({bool isScanning, List<GroceryItem> scannedItems, String? error});
}

/// @nodoc
class _$GroceryOCRStateCopyWithImpl<$Res, $Val extends GroceryOCRState>
    implements $GroceryOCRStateCopyWith<$Res> {
  _$GroceryOCRStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? scannedItems = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      scannedItems: null == scannedItems
          ? _value.scannedItems
          : scannedItems // ignore: cast_nullable_to_non_nullable
              as List<GroceryItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryOCRStateImplCopyWith<$Res>
    implements $GroceryOCRStateCopyWith<$Res> {
  factory _$$GroceryOCRStateImplCopyWith(_$GroceryOCRStateImpl value,
          $Res Function(_$GroceryOCRStateImpl) then) =
      __$$GroceryOCRStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isScanning, List<GroceryItem> scannedItems, String? error});
}

/// @nodoc
class __$$GroceryOCRStateImplCopyWithImpl<$Res>
    extends _$GroceryOCRStateCopyWithImpl<$Res, _$GroceryOCRStateImpl>
    implements _$$GroceryOCRStateImplCopyWith<$Res> {
  __$$GroceryOCRStateImplCopyWithImpl(
      _$GroceryOCRStateImpl _value, $Res Function(_$GroceryOCRStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? scannedItems = null,
    Object? error = freezed,
  }) {
    return _then(_$GroceryOCRStateImpl(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      scannedItems: null == scannedItems
          ? _value._scannedItems
          : scannedItems // ignore: cast_nullable_to_non_nullable
              as List<GroceryItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GroceryOCRStateImpl implements _GroceryOCRState {
  const _$GroceryOCRStateImpl(
      {this.isScanning = false,
      final List<GroceryItem> scannedItems = const [],
      this.error})
      : _scannedItems = scannedItems;

  @override
  @JsonKey()
  final bool isScanning;
  final List<GroceryItem> _scannedItems;
  @override
  @JsonKey()
  List<GroceryItem> get scannedItems {
    if (_scannedItems is EqualUnmodifiableListView) return _scannedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scannedItems);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'GroceryOCRState(isScanning: $isScanning, scannedItems: $scannedItems, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryOCRStateImpl &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            const DeepCollectionEquality()
                .equals(other._scannedItems, _scannedItems) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isScanning,
      const DeepCollectionEquality().hash(_scannedItems), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryOCRStateImplCopyWith<_$GroceryOCRStateImpl> get copyWith =>
      __$$GroceryOCRStateImplCopyWithImpl<_$GroceryOCRStateImpl>(
          this, _$identity);
}

abstract class _GroceryOCRState implements GroceryOCRState {
  const factory _GroceryOCRState(
      {final bool isScanning,
      final List<GroceryItem> scannedItems,
      final String? error}) = _$GroceryOCRStateImpl;

  @override
  bool get isScanning;
  @override
  List<GroceryItem> get scannedItems;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$GroceryOCRStateImplCopyWith<_$GroceryOCRStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
