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
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_ShowConnectionEvent value) showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_ShowConnectionEvent value)? showConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_ShowConnectionEvent value)? showConnection,
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

class _$GetUserEventImpl with DiagnosticableTreeMixin implements _GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.getUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingEvent.getUser'));
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
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_ShowConnectionEvent value) showConnection,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_ShowConnectionEvent value)? showConnection,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_ShowConnectionEvent value)? showConnection,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUserEvent implements AppLoadingEvent {
  const factory _GetUserEvent() = _$GetUserEventImpl;
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

class _$ShowConnectionEventImpl
    with DiagnosticableTreeMixin
    implements _ShowConnectionEvent {
  const _$ShowConnectionEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.showConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppLoadingEvent.showConnection'));
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
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_ShowConnectionEvent value) showConnection,
  }) {
    return showConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_ShowConnectionEvent value)? showConnection,
  }) {
    return showConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_ShowConnectionEvent value)? showConnection,
    required TResult orElse(),
  }) {
    if (showConnection != null) {
      return showConnection(this);
    }
    return orElse();
  }
}

abstract class _ShowConnectionEvent implements AppLoadingEvent {
  const factory _ShowConnectionEvent() = _$ShowConnectionEventImpl;
}

/// @nodoc
mixin _$AppLoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingInitialState value) initial,
    required TResult Function(AppLoadingLoadingState value) loading,
    required TResult Function(AppLoadingSuccessState value) success,
    required TResult Function(AppLoadingErrorState value) error,
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
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

class _$AppLoadingInitialStateImpl
    with DiagnosticableTreeMixin
    implements AppLoadingInitialState {
  const _$AppLoadingInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.initial'));
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
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
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
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
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
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
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
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
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
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

class _$AppLoadingLoadingStateImpl
    with DiagnosticableTreeMixin
    implements AppLoadingLoadingState {
  const _$AppLoadingLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.loading'));
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
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
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
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
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
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
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
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
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
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

class _$AppLoadingSuccessStateImpl
    with DiagnosticableTreeMixin
    implements AppLoadingSuccessState {
  const _$AppLoadingSuccessStateImpl(this.userData);

  @override
  final UserModel? userData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.success(userData: $userData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppLoadingState.success'))
      ..add(DiagnosticsProperty('userData', userData));
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
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
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
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
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
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
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
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
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
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

class _$AppLoadingErrorStateImpl
    with DiagnosticableTreeMixin
    implements AppLoadingErrorState {
  const _$AppLoadingErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppLoadingState.error'))
      ..add(DiagnosticsProperty('message', message));
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
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
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
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
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
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
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
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
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
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

/// @nodoc
abstract class _$$LoadToOnboardingStateImplCopyWith<$Res> {
  factory _$$LoadToOnboardingStateImplCopyWith(
          _$LoadToOnboardingStateImpl value,
          $Res Function(_$LoadToOnboardingStateImpl) then) =
      __$$LoadToOnboardingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadToOnboardingStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$LoadToOnboardingStateImpl>
    implements _$$LoadToOnboardingStateImplCopyWith<$Res> {
  __$$LoadToOnboardingStateImplCopyWithImpl(_$LoadToOnboardingStateImpl _value,
      $Res Function(_$LoadToOnboardingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadToOnboardingStateImpl
    with DiagnosticableTreeMixin
    implements LoadToOnboardingState {
  const _$LoadToOnboardingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.loadToOnboarding()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppLoadingState.loadToOnboarding'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadToOnboardingStateImpl);
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
  }) {
    return loadToOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
  }) {
    return loadToOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
    required TResult orElse(),
  }) {
    if (loadToOnboarding != null) {
      return loadToOnboarding();
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
  }) {
    return loadToOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
  }) {
    return loadToOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (loadToOnboarding != null) {
      return loadToOnboarding(this);
    }
    return orElse();
  }
}

abstract class LoadToOnboardingState implements AppLoadingState {
  const factory LoadToOnboardingState() = _$LoadToOnboardingStateImpl;
}

/// @nodoc
abstract class _$$LoadToHomeStateImplCopyWith<$Res> {
  factory _$$LoadToHomeStateImplCopyWith(_$LoadToHomeStateImpl value,
          $Res Function(_$LoadToHomeStateImpl) then) =
      __$$LoadToHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadToHomeStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$LoadToHomeStateImpl>
    implements _$$LoadToHomeStateImplCopyWith<$Res> {
  __$$LoadToHomeStateImplCopyWithImpl(
      _$LoadToHomeStateImpl _value, $Res Function(_$LoadToHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadToHomeStateImpl
    with DiagnosticableTreeMixin
    implements LoadToHomeState {
  const _$LoadToHomeStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.loadToHome()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.loadToHome'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadToHomeStateImpl);
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
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
  }) {
    return loadToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
  }) {
    return loadToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
    required TResult orElse(),
  }) {
    if (loadToHome != null) {
      return loadToHome();
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
  }) {
    return loadToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
  }) {
    return loadToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (loadToHome != null) {
      return loadToHome(this);
    }
    return orElse();
  }
}

abstract class LoadToHomeState implements AppLoadingState {
  const factory LoadToHomeState() = _$LoadToHomeStateImpl;
}

/// @nodoc
abstract class _$$ConnectionErrorImplCopyWith<$Res> {
  factory _$$ConnectionErrorImplCopyWith(_$ConnectionErrorImpl value,
          $Res Function(_$ConnectionErrorImpl) then) =
      __$$ConnectionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionErrorImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$ConnectionErrorImpl>
    implements _$$ConnectionErrorImplCopyWith<$Res> {
  __$$ConnectionErrorImplCopyWithImpl(
      _$ConnectionErrorImpl _value, $Res Function(_$ConnectionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorImpl
    with DiagnosticableTreeMixin
    implements ConnectionError {
  const _$ConnectionErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.connectionError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppLoadingState.connectionError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorImplCopyWith<_$ConnectionErrorImpl> get copyWith =>
      __$$ConnectionErrorImplCopyWithImpl<_$ConnectionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? userData) success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function(String message) connectionError,
  }) {
    return connectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel? userData)? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function(String message)? connectionError,
  }) {
    return connectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? userData)? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function(String message)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(message);
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
    required TResult Function(LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(LoadToHomeState value) loadToHome,
    required TResult Function(ConnectionError value) connectionError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingInitialState value)? initial,
    TResult? Function(AppLoadingLoadingState value)? loading,
    TResult? Function(AppLoadingSuccessState value)? success,
    TResult? Function(AppLoadingErrorState value)? error,
    TResult? Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(LoadToHomeState value)? loadToHome,
    TResult? Function(ConnectionError value)? connectionError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingInitialState value)? initial,
    TResult Function(AppLoadingLoadingState value)? loading,
    TResult Function(AppLoadingSuccessState value)? success,
    TResult Function(AppLoadingErrorState value)? error,
    TResult Function(LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(LoadToHomeState value)? loadToHome,
    TResult Function(ConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError implements AppLoadingState {
  const factory ConnectionError(final String message) = _$ConnectionErrorImpl;

  String get message;

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionErrorImplCopyWith<_$ConnectionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
