// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_loading_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLoadingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? showConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUser,
    required TResult Function(ShowConnectionEvent value) showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUser,
    TResult? Function(ShowConnectionEvent value)? showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUser,
    TResult Function(ShowConnectionEvent value)? showConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLoadingEventCopyWith<$Res> {
  factory $AppLoadingEventCopyWith(
          AppLoadingEvent value, $Res Function(AppLoadingEvent) then) =
      _$AppLoadingEventCopyWithImpl<$Res, AppLoadingEvent>;
}

/// @nodoc
class _$AppLoadingEventCopyWithImpl<$Res, $Val extends AppLoadingEvent>
    implements $AppLoadingEventCopyWith<$Res> {
  _$AppLoadingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserEventImpl implements GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString() {
    return 'AppLoadingEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() showConnection,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? showConnection,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? showConnection,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUser,
    required TResult Function(ShowConnectionEvent value) showConnection,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUser,
    TResult? Function(ShowConnectionEvent value)? showConnection,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUser,
    TResult Function(ShowConnectionEvent value)? showConnection,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUserEvent implements AppLoadingEvent {
  const factory GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$ShowConnectionEventImplCopyWith<$Res> {
  factory _$$ShowConnectionEventImplCopyWith(_$ShowConnectionEventImpl value,
          $Res Function(_$ShowConnectionEventImpl) then) =
      __$$ShowConnectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowConnectionEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res, _$ShowConnectionEventImpl>
    implements _$$ShowConnectionEventImplCopyWith<$Res> {
  __$$ShowConnectionEventImplCopyWithImpl(_$ShowConnectionEventImpl _value,
      $Res Function(_$ShowConnectionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowConnectionEventImpl implements ShowConnectionEvent {
  const _$ShowConnectionEventImpl();

  @override
  String toString() {
    return 'AppLoadingEvent.showConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConnectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() showConnection,
  }) {
    return showConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? showConnection,
  }) {
    return showConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? showConnection,
    required TResult orElse(),
  }) {
    if (showConnection != null) {
      return showConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUser,
    required TResult Function(ShowConnectionEvent value) showConnection,
  }) {
    return showConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUser,
    TResult? Function(ShowConnectionEvent value)? showConnection,
  }) {
    return showConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUser,
    TResult Function(ShowConnectionEvent value)? showConnection,
    required TResult orElse(),
  }) {
    if (showConnection != null) {
      return showConnection(this);
    }
    return orElse();
  }
}

abstract class ShowConnectionEvent implements AppLoadingEvent {
  const factory ShowConnectionEvent() = _$ShowConnectionEventImpl;
}

/// @nodoc
mixin _$AppLoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLoadingStateCopyWith<$Res> {
  factory $AppLoadingStateCopyWith(
          AppLoadingState value, $Res Function(AppLoadingState) then) =
      _$AppLoadingStateCopyWithImpl<$Res, AppLoadingState>;
}

/// @nodoc
class _$AppLoadingStateCopyWithImpl<$Res, $Val extends AppLoadingState>
    implements $AppLoadingStateCopyWith<$Res> {
  _$AppLoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppLoadingInitialStateImplCopyWith<$Res> {
  factory _$$AppLoadingInitialStateImplCopyWith(
          _$AppLoadingInitialStateImpl value,
          $Res Function(_$AppLoadingInitialStateImpl) then) =
      __$$AppLoadingInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadingInitialStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$AppLoadingInitialStateImpl>
    implements _$$AppLoadingInitialStateImplCopyWith<$Res> {
  __$$AppLoadingInitialStateImplCopyWithImpl(
      _$AppLoadingInitialStateImpl _value,
      $Res Function(_$AppLoadingInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppLoadingInitialStateImpl implements AppLoadingInitialState {
  const _$AppLoadingInitialStateImpl();

  @override
  String toString() {
    return 'AppLoadingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoadingInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
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
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppLoadingInitialState implements AppLoadingState {
  const factory AppLoadingInitialState() = _$AppLoadingInitialStateImpl;
}

/// @nodoc
abstract class _$$AppLoadingLoadingStateImplCopyWith<$Res> {
  factory _$$AppLoadingLoadingStateImplCopyWith(
          _$AppLoadingLoadingStateImpl value,
          $Res Function(_$AppLoadingLoadingStateImpl) then) =
      __$$AppLoadingLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadingLoadingStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$AppLoadingLoadingStateImpl>
    implements _$$AppLoadingLoadingStateImplCopyWith<$Res> {
  __$$AppLoadingLoadingStateImplCopyWithImpl(
      _$AppLoadingLoadingStateImpl _value,
      $Res Function(_$AppLoadingLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppLoadingLoadingStateImpl implements AppLoadingLoadingState {
  const _$AppLoadingLoadingStateImpl();

  @override
  String toString() {
    return 'AppLoadingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoadingLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
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
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppLoadingLoadingState implements AppLoadingState {
  const factory AppLoadingLoadingState() = _$AppLoadingLoadingStateImpl;
}

/// @nodoc
abstract class _$$AppLoadingSuccessStateImplCopyWith<$Res> {
  factory _$$AppLoadingSuccessStateImplCopyWith(
          _$AppLoadingSuccessStateImpl value,
          $Res Function(_$AppLoadingSuccessStateImpl) then) =
      __$$AppLoadingSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? userData});

  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$AppLoadingSuccessStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$AppLoadingSuccessStateImpl>
    implements _$$AppLoadingSuccessStateImplCopyWith<$Res> {
  __$$AppLoadingSuccessStateImplCopyWithImpl(
      _$AppLoadingSuccessStateImpl _value,
      $Res Function(_$AppLoadingSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(_$AppLoadingSuccessStateImpl(
      freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$AppLoadingSuccessStateImpl implements AppLoadingSuccessState {
  const _$AppLoadingSuccessStateImpl(this.userData);

  @override
  final UserModel? userData;

  @override
  String toString() {
    return 'AppLoadingState.success(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoadingSuccessStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLoadingSuccessStateImplCopyWith<_$AppLoadingSuccessStateImpl>
      get copyWith => __$$AppLoadingSuccessStateImplCopyWithImpl<
          _$AppLoadingSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
  }) {
    return success(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AppLoadingSuccessState implements AppLoadingState {
  const factory AppLoadingSuccessState(final UserModel? userData) =
      _$AppLoadingSuccessStateImpl;

  UserModel? get userData;

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLoadingSuccessStateImplCopyWith<_$AppLoadingSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppLoadingErrorStateImplCopyWith<$Res> {
  factory _$$AppLoadingErrorStateImplCopyWith(_$AppLoadingErrorStateImpl value,
          $Res Function(_$AppLoadingErrorStateImpl) then) =
      __$$AppLoadingErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppLoadingErrorStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$AppLoadingErrorStateImpl>
    implements _$$AppLoadingErrorStateImplCopyWith<$Res> {
  __$$AppLoadingErrorStateImplCopyWithImpl(_$AppLoadingErrorStateImpl _value,
      $Res Function(_$AppLoadingErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppLoadingErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppLoadingErrorStateImpl implements AppLoadingErrorState {
  const _$AppLoadingErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppLoadingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoadingErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLoadingErrorStateImplCopyWith<_$AppLoadingErrorStateImpl>
      get copyWith =>
          __$$AppLoadingErrorStateImplCopyWithImpl<_$AppLoadingErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppLoadingErrorState implements AppLoadingState {
  const factory AppLoadingErrorState(final String message) =
      _$AppLoadingErrorStateImpl;

  String get message;

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLoadingErrorStateImplCopyWith<_$AppLoadingErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
