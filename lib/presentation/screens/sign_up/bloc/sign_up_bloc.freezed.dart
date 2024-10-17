// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(bool isChecked) checkboxChanged,
    required TResult Function() submitSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(bool isChecked)? checkboxChanged,
    TResult? Function()? submitSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(bool isChecked)? checkboxChanged,
    TResult Function()? submitSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChangedEvent value) emailChanged,
    required TResult Function(CheckboxChangedEvent value) checkboxChanged,
    required TResult Function(SubmitSignUpEvent value) submitSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChangedEvent value)? emailChanged,
    TResult? Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult? Function(SubmitSignUpEvent value)? submitSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChangedEvent value)? emailChanged,
    TResult Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult Function(SubmitSignUpEvent value)? submitSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailChangedEventImplCopyWith<$Res> {
  factory _$$EmailChangedEventImplCopyWith(_$EmailChangedEventImpl value,
          $Res Function(_$EmailChangedEventImpl) then) =
      __$$EmailChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedEventImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailChangedEventImpl>
    implements _$$EmailChangedEventImplCopyWith<$Res> {
  __$$EmailChangedEventImplCopyWithImpl(_$EmailChangedEventImpl _value,
      $Res Function(_$EmailChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedEventImpl implements EmailChangedEvent {
  const _$EmailChangedEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedEventImplCopyWith<_$EmailChangedEventImpl> get copyWith =>
      __$$EmailChangedEventImplCopyWithImpl<_$EmailChangedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(bool isChecked) checkboxChanged,
    required TResult Function() submitSignUp,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(bool isChecked)? checkboxChanged,
    TResult? Function()? submitSignUp,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(bool isChecked)? checkboxChanged,
    TResult Function()? submitSignUp,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChangedEvent value) emailChanged,
    required TResult Function(CheckboxChangedEvent value) checkboxChanged,
    required TResult Function(SubmitSignUpEvent value) submitSignUp,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChangedEvent value)? emailChanged,
    TResult? Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult? Function(SubmitSignUpEvent value)? submitSignUp,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChangedEvent value)? emailChanged,
    TResult Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult Function(SubmitSignUpEvent value)? submitSignUp,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChangedEvent implements SignUpEvent {
  const factory EmailChangedEvent(final String email) = _$EmailChangedEventImpl;

  String get email;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedEventImplCopyWith<_$EmailChangedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckboxChangedEventImplCopyWith<$Res> {
  factory _$$CheckboxChangedEventImplCopyWith(_$CheckboxChangedEventImpl value,
          $Res Function(_$CheckboxChangedEventImpl) then) =
      __$$CheckboxChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isChecked});
}

/// @nodoc
class __$$CheckboxChangedEventImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$CheckboxChangedEventImpl>
    implements _$$CheckboxChangedEventImplCopyWith<$Res> {
  __$$CheckboxChangedEventImplCopyWithImpl(_$CheckboxChangedEventImpl _value,
      $Res Function(_$CheckboxChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChecked = null,
  }) {
    return _then(_$CheckboxChangedEventImpl(
      null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckboxChangedEventImpl implements CheckboxChangedEvent {
  const _$CheckboxChangedEventImpl(this.isChecked);

  @override
  final bool isChecked;

  @override
  String toString() {
    return 'SignUpEvent.checkboxChanged(isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxChangedEventImpl &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isChecked);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxChangedEventImplCopyWith<_$CheckboxChangedEventImpl>
      get copyWith =>
          __$$CheckboxChangedEventImplCopyWithImpl<_$CheckboxChangedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(bool isChecked) checkboxChanged,
    required TResult Function() submitSignUp,
  }) {
    return checkboxChanged(isChecked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(bool isChecked)? checkboxChanged,
    TResult? Function()? submitSignUp,
  }) {
    return checkboxChanged?.call(isChecked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(bool isChecked)? checkboxChanged,
    TResult Function()? submitSignUp,
    required TResult orElse(),
  }) {
    if (checkboxChanged != null) {
      return checkboxChanged(isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChangedEvent value) emailChanged,
    required TResult Function(CheckboxChangedEvent value) checkboxChanged,
    required TResult Function(SubmitSignUpEvent value) submitSignUp,
  }) {
    return checkboxChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChangedEvent value)? emailChanged,
    TResult? Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult? Function(SubmitSignUpEvent value)? submitSignUp,
  }) {
    return checkboxChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChangedEvent value)? emailChanged,
    TResult Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult Function(SubmitSignUpEvent value)? submitSignUp,
    required TResult orElse(),
  }) {
    if (checkboxChanged != null) {
      return checkboxChanged(this);
    }
    return orElse();
  }
}

abstract class CheckboxChangedEvent implements SignUpEvent {
  const factory CheckboxChangedEvent(final bool isChecked) =
      _$CheckboxChangedEventImpl;

  bool get isChecked;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckboxChangedEventImplCopyWith<_$CheckboxChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSignUpEventImplCopyWith<$Res> {
  factory _$$SubmitSignUpEventImplCopyWith(_$SubmitSignUpEventImpl value,
          $Res Function(_$SubmitSignUpEventImpl) then) =
      __$$SubmitSignUpEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSignUpEventImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SubmitSignUpEventImpl>
    implements _$$SubmitSignUpEventImplCopyWith<$Res> {
  __$$SubmitSignUpEventImplCopyWithImpl(_$SubmitSignUpEventImpl _value,
      $Res Function(_$SubmitSignUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitSignUpEventImpl implements SubmitSignUpEvent {
  const _$SubmitSignUpEventImpl();

  @override
  String toString() {
    return 'SignUpEvent.submitSignUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitSignUpEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(bool isChecked) checkboxChanged,
    required TResult Function() submitSignUp,
  }) {
    return submitSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(bool isChecked)? checkboxChanged,
    TResult? Function()? submitSignUp,
  }) {
    return submitSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(bool isChecked)? checkboxChanged,
    TResult Function()? submitSignUp,
    required TResult orElse(),
  }) {
    if (submitSignUp != null) {
      return submitSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChangedEvent value) emailChanged,
    required TResult Function(CheckboxChangedEvent value) checkboxChanged,
    required TResult Function(SubmitSignUpEvent value) submitSignUp,
  }) {
    return submitSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChangedEvent value)? emailChanged,
    TResult? Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult? Function(SubmitSignUpEvent value)? submitSignUp,
  }) {
    return submitSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChangedEvent value)? emailChanged,
    TResult Function(CheckboxChangedEvent value)? checkboxChanged,
    TResult Function(SubmitSignUpEvent value)? submitSignUp,
    required TResult orElse(),
  }) {
    if (submitSignUp != null) {
      return submitSignUp(this);
    }
    return orElse();
  }
}

abstract class SubmitSignUpEvent implements SignUpEvent {
  const factory SubmitSignUpEvent() = _$SubmitSignUpEventImpl;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isChecked) form,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailValid, bool isChecked)? form,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isChecked)? form,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpFormState value) form,
    required TResult Function(_SignUpSuccessState value) success,
    required TResult Function(_SignUpFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpFormState value)? form,
    TResult? Function(_SignUpSuccessState value)? success,
    TResult? Function(_SignUpFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpFormState value)? form,
    TResult Function(_SignUpSuccessState value)? success,
    TResult Function(_SignUpFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpFormStateImplCopyWith<$Res> {
  factory _$$SignUpFormStateImplCopyWith(_$SignUpFormStateImpl value,
          $Res Function(_$SignUpFormStateImpl) then) =
      __$$SignUpFormStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEmailValid, bool isChecked});
}

/// @nodoc
class __$$SignUpFormStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpFormStateImpl>
    implements _$$SignUpFormStateImplCopyWith<$Res> {
  __$$SignUpFormStateImplCopyWithImpl(
      _$SignUpFormStateImpl _value, $Res Function(_$SignUpFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailValid = null,
    Object? isChecked = null,
  }) {
    return _then(_$SignUpFormStateImpl(
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignUpFormStateImpl implements _SignUpFormState {
  const _$SignUpFormStateImpl(
      {required this.isEmailValid, required this.isChecked});

  @override
  final bool isEmailValid;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'SignUpState.form(isEmailValid: $isEmailValid, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormStateImpl &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEmailValid, isChecked);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      __$$SignUpFormStateImplCopyWithImpl<_$SignUpFormStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isChecked) form,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return form(isEmailValid, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailValid, bool isChecked)? form,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return form?.call(isEmailValid, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isChecked)? form,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(isEmailValid, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpFormState value) form,
    required TResult Function(_SignUpSuccessState value) success,
    required TResult Function(_SignUpFailureState value) failure,
  }) {
    return form(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpFormState value)? form,
    TResult? Function(_SignUpSuccessState value)? success,
    TResult? Function(_SignUpFailureState value)? failure,
  }) {
    return form?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpFormState value)? form,
    TResult Function(_SignUpSuccessState value)? success,
    TResult Function(_SignUpFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class _SignUpFormState implements SignUpState {
  const factory _SignUpFormState(
      {required final bool isEmailValid,
      required final bool isChecked}) = _$SignUpFormStateImpl;

  bool get isEmailValid;
  bool get isChecked;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpSuccessStateImplCopyWith<$Res> {
  factory _$$SignUpSuccessStateImplCopyWith(_$SignUpSuccessStateImpl value,
          $Res Function(_$SignUpSuccessStateImpl) then) =
      __$$SignUpSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSuccessStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpSuccessStateImpl>
    implements _$$SignUpSuccessStateImplCopyWith<$Res> {
  __$$SignUpSuccessStateImplCopyWithImpl(_$SignUpSuccessStateImpl _value,
      $Res Function(_$SignUpSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpSuccessStateImpl implements _SignUpSuccessState {
  const _$SignUpSuccessStateImpl();

  @override
  String toString() {
    return 'SignUpState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isChecked) form,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailValid, bool isChecked)? form,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isChecked)? form,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpFormState value) form,
    required TResult Function(_SignUpSuccessState value) success,
    required TResult Function(_SignUpFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpFormState value)? form,
    TResult? Function(_SignUpSuccessState value)? success,
    TResult? Function(_SignUpFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpFormState value)? form,
    TResult Function(_SignUpSuccessState value)? success,
    TResult Function(_SignUpFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignUpSuccessState implements SignUpState {
  const factory _SignUpSuccessState() = _$SignUpSuccessStateImpl;
}

/// @nodoc
abstract class _$$SignUpFailureStateImplCopyWith<$Res> {
  factory _$$SignUpFailureStateImplCopyWith(_$SignUpFailureStateImpl value,
          $Res Function(_$SignUpFailureStateImpl) then) =
      __$$SignUpFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignUpFailureStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpFailureStateImpl>
    implements _$$SignUpFailureStateImplCopyWith<$Res> {
  __$$SignUpFailureStateImplCopyWithImpl(_$SignUpFailureStateImpl _value,
      $Res Function(_$SignUpFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignUpFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailureStateImpl implements _SignUpFailureState {
  const _$SignUpFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignUpState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureStateImplCopyWith<_$SignUpFailureStateImpl> get copyWith =>
      __$$SignUpFailureStateImplCopyWithImpl<_$SignUpFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isChecked) form,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmailValid, bool isChecked)? form,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isChecked)? form,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpFormState value) form,
    required TResult Function(_SignUpSuccessState value) success,
    required TResult Function(_SignUpFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpFormState value)? form,
    TResult? Function(_SignUpSuccessState value)? success,
    TResult? Function(_SignUpFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpFormState value)? form,
    TResult Function(_SignUpSuccessState value)? success,
    TResult Function(_SignUpFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignUpFailureState implements SignUpState {
  const factory _SignUpFailureState(final String message) =
      _$SignUpFailureStateImpl;

  String get message;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFailureStateImplCopyWith<_$SignUpFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
