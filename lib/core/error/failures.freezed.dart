// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error});
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$StorageFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$StorageFailureImpl implements StorageFailure {
  const _$StorageFailureImpl({required this.message, this.error});

  @override
  final String message;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.storage(message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      __$$StorageFailureImplCopyWithImpl<_$StorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) {
    return storage(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) {
    return storage?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class StorageFailure implements Failure {
  const factory StorageFailure(
      {required final String message,
      final Object? error}) = _$StorageFailureImpl;

  @override
  String get message;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(_$ValidationFailureImpl value,
          $Res Function(_$ValidationFailureImpl) then) =
      __$$ValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? field});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(_$ValidationFailureImpl _value,
      $Res Function(_$ValidationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? field = freezed,
  }) {
    return _then(_$ValidationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ValidationFailureImpl implements ValidationFailure {
  const _$ValidationFailureImpl({required this.message, this.field});

  @override
  final String message;
  @override
  final String? field;

  @override
  String toString() {
    return 'Failure.validation(message: $message, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) {
    return validation(message, field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) {
    return validation?.call(message, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationFailure implements Failure {
  const factory ValidationFailure(
      {required final String message,
      final String? field}) = _$ValidationFailureImpl;

  @override
  String get message;
  String? get field;
  @override
  @JsonKey(ignore: true)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl({required this.message, this.error});

  @override
  final String message;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.network(message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) {
    return network(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) {
    return network?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure(
      {required final String message,
      final Object? error}) = _$NetworkFailureImpl;

  @override
  String get message;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(_$UnexpectedFailureImpl value,
          $Res Function(_$UnexpectedFailureImpl) then) =
      __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(_$UnexpectedFailureImpl _value,
      $Res Function(_$UnexpectedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnexpectedFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnexpectedFailureImpl implements UnexpectedFailure {
  const _$UnexpectedFailureImpl(
      {required this.message, this.error, this.stackTrace});

  @override
  final String message;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) {
    return unexpected(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) {
    return unexpected?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements Failure {
  const factory UnexpectedFailure(
      {required final String message,
      final Object? error,
      final StackTrace? stackTrace}) = _$UnexpectedFailureImpl;

  @override
  String get message;
  Object? get error;
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? resourceId});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resourceId = freezed,
  }) {
    return _then(_$NotFoundFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements NotFoundFailure {
  const _$NotFoundFailureImpl({required this.message, this.resourceId});

  @override
  final String message;
  @override
  final String? resourceId;

  @override
  String toString() {
    return 'Failure.notFound(message: $message, resourceId: $resourceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, resourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, Object? error) storage,
    required TResult Function(String message, String? field) validation,
    required TResult Function(String message, Object? error) network,
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        unexpected,
    required TResult Function(String message, String? resourceId) notFound,
  }) {
    return notFound(message, resourceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, Object? error)? storage,
    TResult? Function(String message, String? field)? validation,
    TResult? Function(String message, Object? error)? network,
    TResult? Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult? Function(String message, String? resourceId)? notFound,
  }) {
    return notFound?.call(message, resourceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error)? storage,
    TResult Function(String message, String? field)? validation,
    TResult Function(String message, Object? error)? network,
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        unexpected,
    TResult Function(String message, String? resourceId)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, resourceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageFailure value) storage,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageFailure value)? storage,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure(
      {required final String message,
      final String? resourceId}) = _$NotFoundFailureImpl;

  @override
  String get message;
  String? get resourceId;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
