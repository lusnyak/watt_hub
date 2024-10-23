// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) resendOtp,
    required TResult Function(String? otpCode, String? token) verifyOtp,
    required TResult Function(String? token, String? email) setValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? resendOtp,
    TResult? Function(String? otpCode, String? token)? verifyOtp,
    TResult? Function(String? token, String? email)? setValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? resendOtp,
    TResult Function(String? otpCode, String? token)? verifyOtp,
    TResult Function(String? token, String? email)? setValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SetValuesEvent value) setValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SetValuesEvent value)? setValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SetValuesEvent value)? setValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEventCopyWith<$Res> {
  factory $VerificationEventCopyWith(
          VerificationEvent value, $Res Function(VerificationEvent) then) =
      _$VerificationEventCopyWithImpl<$Res, VerificationEvent>;
}

/// @nodoc
class _$VerificationEventCopyWithImpl<$Res, $Val extends VerificationEvent>
    implements $VerificationEventCopyWith<$Res> {
  _$VerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$ResendOtpImpl(
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements ResendOtp {
  const _$ResendOtpImpl(this.email);

  @override
  final String? email;

  @override
  String toString() {
    return 'VerificationEvent.resendOtp(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) resendOtp,
    required TResult Function(String? otpCode, String? token) verifyOtp,
    required TResult Function(String? token, String? email) setValues,
  }) {
    return resendOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? resendOtp,
    TResult? Function(String? otpCode, String? token)? verifyOtp,
    TResult? Function(String? token, String? email)? setValues,
  }) {
    return resendOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? resendOtp,
    TResult Function(String? otpCode, String? token)? verifyOtp,
    TResult Function(String? token, String? email)? setValues,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SetValuesEvent value) setValues,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SetValuesEvent value)? setValues,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SetValuesEvent value)? setValues,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class ResendOtp implements VerificationEvent {
  const factory ResendOtp(final String? email) = _$ResendOtpImpl;

  String? get email;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otpCode, String? token});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = freezed,
    Object? token = freezed,
  }) {
    return _then(_$VerifyOtpImpl(
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl({this.otpCode, this.token});

  @override
  final String? otpCode;
  @override
  final String? token;

  @override
  String toString() {
    return 'VerificationEvent.verifyOtp(otpCode: $otpCode, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode, token);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) resendOtp,
    required TResult Function(String? otpCode, String? token) verifyOtp,
    required TResult Function(String? token, String? email) setValues,
  }) {
    return verifyOtp(otpCode, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? resendOtp,
    TResult? Function(String? otpCode, String? token)? verifyOtp,
    TResult? Function(String? token, String? email)? setValues,
  }) {
    return verifyOtp?.call(otpCode, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? resendOtp,
    TResult Function(String? otpCode, String? token)? verifyOtp,
    TResult Function(String? token, String? email)? setValues,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpCode, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SetValuesEvent value) setValues,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SetValuesEvent value)? setValues,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SetValuesEvent value)? setValues,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements VerificationEvent {
  const factory VerifyOtp({final String? otpCode, final String? token}) =
      _$VerifyOtpImpl;

  String? get otpCode;
  String? get token;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetValuesEventImplCopyWith<$Res> {
  factory _$$SetValuesEventImplCopyWith(_$SetValuesEventImpl value,
          $Res Function(_$SetValuesEventImpl) then) =
      __$$SetValuesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? token, String? email});
}

/// @nodoc
class __$$SetValuesEventImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$SetValuesEventImpl>
    implements _$$SetValuesEventImplCopyWith<$Res> {
  __$$SetValuesEventImplCopyWithImpl(
      _$SetValuesEventImpl _value, $Res Function(_$SetValuesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
  }) {
    return _then(_$SetValuesEventImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetValuesEventImpl implements SetValuesEvent {
  const _$SetValuesEventImpl({this.token, this.email});

  @override
  final String? token;
  @override
  final String? email;

  @override
  String toString() {
    return 'VerificationEvent.setValues(token: $token, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetValuesEventImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, email);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetValuesEventImplCopyWith<_$SetValuesEventImpl> get copyWith =>
      __$$SetValuesEventImplCopyWithImpl<_$SetValuesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) resendOtp,
    required TResult Function(String? otpCode, String? token) verifyOtp,
    required TResult Function(String? token, String? email) setValues,
  }) {
    return setValues(token, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? resendOtp,
    TResult? Function(String? otpCode, String? token)? verifyOtp,
    TResult? Function(String? token, String? email)? setValues,
  }) {
    return setValues?.call(token, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? resendOtp,
    TResult Function(String? otpCode, String? token)? verifyOtp,
    TResult Function(String? token, String? email)? setValues,
    required TResult orElse(),
  }) {
    if (setValues != null) {
      return setValues(token, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SetValuesEvent value) setValues,
  }) {
    return setValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SetValuesEvent value)? setValues,
  }) {
    return setValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SetValuesEvent value)? setValues,
    required TResult orElse(),
  }) {
    if (setValues != null) {
      return setValues(this);
    }
    return orElse();
  }
}

abstract class SetValuesEvent implements VerificationEvent {
  const factory SetValuesEvent({final String? token, final String? email}) =
      _$SetValuesEventImpl;

  String? get token;
  String? get email;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetValuesEventImplCopyWith<_$SetValuesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)
        success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationInitial value) initial,
    required TResult Function(VerificationLoading value) loading,
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationInitial value)? initial,
    TResult? Function(VerificationLoading value)? loading,
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationInitial value)? initial,
    TResult Function(VerificationLoading value)? loading,
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VerificationInitialImplCopyWith<$Res> {
  factory _$$VerificationInitialImplCopyWith(_$VerificationInitialImpl value,
          $Res Function(_$VerificationInitialImpl) then) =
      __$$VerificationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationInitialImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationInitialImpl>
    implements _$$VerificationInitialImplCopyWith<$Res> {
  __$$VerificationInitialImplCopyWithImpl(_$VerificationInitialImpl _value,
      $Res Function(_$VerificationInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerificationInitialImpl implements VerificationInitial {
  const _$VerificationInitialImpl();

  @override
  String toString() {
    return 'VerificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)
        success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult Function(String error)? failure,
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
    required TResult Function(VerificationInitial value) initial,
    required TResult Function(VerificationLoading value) loading,
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationInitial value)? initial,
    TResult? Function(VerificationLoading value)? loading,
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationInitial value)? initial,
    TResult Function(VerificationLoading value)? loading,
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VerificationInitial implements VerificationState {
  const factory VerificationInitial() = _$VerificationInitialImpl;
}

/// @nodoc
abstract class _$$VerificationLoadingImplCopyWith<$Res> {
  factory _$$VerificationLoadingImplCopyWith(_$VerificationLoadingImpl value,
          $Res Function(_$VerificationLoadingImpl) then) =
      __$$VerificationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationLoadingImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationLoadingImpl>
    implements _$$VerificationLoadingImplCopyWith<$Res> {
  __$$VerificationLoadingImplCopyWithImpl(_$VerificationLoadingImpl _value,
      $Res Function(_$VerificationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerificationLoadingImpl implements VerificationLoading {
  const _$VerificationLoadingImpl();

  @override
  String toString() {
    return 'VerificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)
        success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationInitial value) initial,
    required TResult Function(VerificationLoading value) loading,
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationInitial value)? initial,
    TResult? Function(VerificationLoading value)? loading,
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationInitial value)? initial,
    TResult Function(VerificationLoading value)? loading,
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerificationLoading implements VerificationState {
  const factory VerificationLoading() = _$VerificationLoadingImpl;
}

/// @nodoc
abstract class _$$VerificationSuccessImplCopyWith<$Res> {
  factory _$$VerificationSuccessImplCopyWith(_$VerificationSuccessImpl value,
          $Res Function(_$VerificationSuccessImpl) then) =
      __$$VerificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? token, bool? flag, String? email, TokenModel? resendData});

  $TokenModelCopyWith<$Res>? get resendData;
}

/// @nodoc
class __$$VerificationSuccessImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationSuccessImpl>
    implements _$$VerificationSuccessImplCopyWith<$Res> {
  __$$VerificationSuccessImplCopyWithImpl(_$VerificationSuccessImpl _value,
      $Res Function(_$VerificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? flag = freezed,
    Object? email = freezed,
    Object? resendData = freezed,
  }) {
    return _then(_$VerificationSuccessImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      resendData: freezed == resendData
          ? _value.resendData
          : resendData // ignore: cast_nullable_to_non_nullable
              as TokenModel?,
    ));
  }

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenModelCopyWith<$Res>? get resendData {
    if (_value.resendData == null) {
      return null;
    }

    return $TokenModelCopyWith<$Res>(_value.resendData!, (value) {
      return _then(_value.copyWith(resendData: value));
    });
  }
}

/// @nodoc

class _$VerificationSuccessImpl implements VerificationSuccess {
  const _$VerificationSuccessImpl(
      {this.token, this.flag, this.email, this.resendData});

  @override
  final String? token;
  @override
  final bool? flag;
  @override
  final String? email;
  @override
  final TokenModel? resendData;

  @override
  String toString() {
    return 'VerificationState.success(token: $token, flag: $flag, email: $email, resendData: $resendData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSuccessImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.resendData, resendData) ||
                other.resendData == resendData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, flag, email, resendData);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationSuccessImplCopyWith<_$VerificationSuccessImpl> get copyWith =>
      __$$VerificationSuccessImplCopyWithImpl<_$VerificationSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)
        success,
    required TResult Function(String error) failure,
  }) {
    return success(token, flag, email, resendData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(token, flag, email, resendData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token, flag, email, resendData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationInitial value) initial,
    required TResult Function(VerificationLoading value) loading,
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationInitial value)? initial,
    TResult? Function(VerificationLoading value)? loading,
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationInitial value)? initial,
    TResult Function(VerificationLoading value)? loading,
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VerificationSuccess implements VerificationState {
  const factory VerificationSuccess(
      {final String? token,
      final bool? flag,
      final String? email,
      final TokenModel? resendData}) = _$VerificationSuccessImpl;

  String? get token;
  bool? get flag;
  String? get email;
  TokenModel? get resendData;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationSuccessImplCopyWith<_$VerificationSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationFailureImplCopyWith<$Res> {
  factory _$$VerificationFailureImplCopyWith(_$VerificationFailureImpl value,
          $Res Function(_$VerificationFailureImpl) then) =
      __$$VerificationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$VerificationFailureImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationFailureImpl>
    implements _$$VerificationFailureImplCopyWith<$Res> {
  __$$VerificationFailureImplCopyWithImpl(_$VerificationFailureImpl _value,
      $Res Function(_$VerificationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$VerificationFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerificationFailureImpl implements VerificationFailure {
  const _$VerificationFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'VerificationState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationFailureImplCopyWith<_$VerificationFailureImpl> get copyWith =>
      __$$VerificationFailureImplCopyWithImpl<_$VerificationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)
        success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String? token, bool? flag, String? email, TokenModel? resendData)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationInitial value) initial,
    required TResult Function(VerificationLoading value) loading,
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationInitial value)? initial,
    TResult? Function(VerificationLoading value)? loading,
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationInitial value)? initial,
    TResult Function(VerificationLoading value)? loading,
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class VerificationFailure implements VerificationState {
  const factory VerificationFailure(final String error) =
      _$VerificationFailureImpl;

  String get error;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationFailureImplCopyWith<_$VerificationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
