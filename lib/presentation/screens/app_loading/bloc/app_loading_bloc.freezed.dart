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
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
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
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitEventImpl with DiagnosticableTreeMixin implements _InitEvent {
  const _$InitEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingEvent.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements AppLoadingEvent {
  const factory _InitEvent() = _$InitEventImpl;
}

/// @nodoc
abstract class _$$CheckTokenValidationEventImplCopyWith<$Res> {
  factory _$$CheckTokenValidationEventImplCopyWith(
          _$CheckTokenValidationEventImpl value,
          $Res Function(_$CheckTokenValidationEventImpl) then) =
      __$$CheckTokenValidationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckTokenValidationEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res, _$CheckTokenValidationEventImpl>
    implements _$$CheckTokenValidationEventImplCopyWith<$Res> {
  __$$CheckTokenValidationEventImplCopyWithImpl(
      _$CheckTokenValidationEventImpl _value,
      $Res Function(_$CheckTokenValidationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckTokenValidationEventImpl
    with DiagnosticableTreeMixin
    implements _CheckTokenValidationEvent {
  const _$CheckTokenValidationEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.checkTokenValidation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AppLoadingEvent.checkTokenValidation'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTokenValidationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) {
    return checkTokenValidation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) {
    return checkTokenValidation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (checkTokenValidation != null) {
      return checkTokenValidation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) {
    return checkTokenValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) {
    return checkTokenValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (checkTokenValidation != null) {
      return checkTokenValidation(this);
    }
    return orElse();
  }
}

abstract class _CheckTokenValidationEvent implements AppLoadingEvent {
  const factory _CheckTokenValidationEvent() = _$CheckTokenValidationEventImpl;
}

/// @nodoc
abstract class _$$CheckInternetConnectionEventImplCopyWith<$Res> {
  factory _$$CheckInternetConnectionEventImplCopyWith(
          _$CheckInternetConnectionEventImpl value,
          $Res Function(_$CheckInternetConnectionEventImpl) then) =
      __$$CheckInternetConnectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInternetConnectionEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res,
        _$CheckInternetConnectionEventImpl>
    implements _$$CheckInternetConnectionEventImplCopyWith<$Res> {
  __$$CheckInternetConnectionEventImplCopyWithImpl(
      _$CheckInternetConnectionEventImpl _value,
      $Res Function(_$CheckInternetConnectionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckInternetConnectionEventImpl
    with DiagnosticableTreeMixin
    implements _CheckInternetConnectionEvent {
  const _$CheckInternetConnectionEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.checkInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AppLoadingEvent.checkInternetConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInternetConnectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) {
    return checkInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) {
    return checkInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) {
    return checkInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) {
    return checkInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckInternetConnectionEvent implements AppLoadingEvent {
  const factory _CheckInternetConnectionEvent() =
      _$CheckInternetConnectionEventImpl;
}

/// @nodoc
abstract class _$$ObserverConnectionEventImplCopyWith<$Res> {
  factory _$$ObserverConnectionEventImplCopyWith(
          _$ObserverConnectionEventImpl value,
          $Res Function(_$ObserverConnectionEventImpl) then) =
      __$$ObserverConnectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObserverConnectionEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res, _$ObserverConnectionEventImpl>
    implements _$$ObserverConnectionEventImplCopyWith<$Res> {
  __$$ObserverConnectionEventImplCopyWithImpl(
      _$ObserverConnectionEventImpl _value,
      $Res Function(_$ObserverConnectionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ObserverConnectionEventImpl
    with DiagnosticableTreeMixin
    implements _ObserverConnectionEvent {
  const _$ObserverConnectionEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.observerConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppLoadingEvent.observerConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObserverConnectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) {
    return observerConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) {
    return observerConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (observerConnection != null) {
      return observerConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) {
    return observerConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) {
    return observerConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (observerConnection != null) {
      return observerConnection(this);
    }
    return orElse();
  }
}

abstract class _ObserverConnectionEvent implements AppLoadingEvent {
  const factory _ObserverConnectionEvent() = _$ObserverConnectionEventImpl;
}

/// @nodoc
abstract class _$$NotifyConnectionStatusEventImplCopyWith<$Res> {
  factory _$$NotifyConnectionStatusEventImplCopyWith(
          _$NotifyConnectionStatusEventImpl value,
          $Res Function(_$NotifyConnectionStatusEventImpl) then) =
      __$$NotifyConnectionStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$NotifyConnectionStatusEventImplCopyWithImpl<$Res>
    extends _$AppLoadingEventCopyWithImpl<$Res,
        _$NotifyConnectionStatusEventImpl>
    implements _$$NotifyConnectionStatusEventImplCopyWith<$Res> {
  __$$NotifyConnectionStatusEventImplCopyWithImpl(
      _$NotifyConnectionStatusEventImpl _value,
      $Res Function(_$NotifyConnectionStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$NotifyConnectionStatusEventImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotifyConnectionStatusEventImpl
    with DiagnosticableTreeMixin
    implements _NotifyConnectionStatusEvent {
  const _$NotifyConnectionStatusEventImpl({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingEvent.notifyConnectionStatus(isConnected: $isConnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AppLoadingEvent.notifyConnectionStatus'))
      ..add(DiagnosticsProperty('isConnected', isConnected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyConnectionStatusEventImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyConnectionStatusEventImplCopyWith<_$NotifyConnectionStatusEventImpl>
      get copyWith => __$$NotifyConnectionStatusEventImplCopyWithImpl<
          _$NotifyConnectionStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() checkTokenValidation,
    required TResult Function() checkInternetConnection,
    required TResult Function() observerConnection,
    required TResult Function(bool isConnected) notifyConnectionStatus,
  }) {
    return notifyConnectionStatus(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? checkTokenValidation,
    TResult? Function()? checkInternetConnection,
    TResult? Function()? observerConnection,
    TResult? Function(bool isConnected)? notifyConnectionStatus,
  }) {
    return notifyConnectionStatus?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? checkTokenValidation,
    TResult Function()? checkInternetConnection,
    TResult Function()? observerConnection,
    TResult Function(bool isConnected)? notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (notifyConnectionStatus != null) {
      return notifyConnectionStatus(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_CheckTokenValidationEvent value)
        checkTokenValidation,
    required TResult Function(_CheckInternetConnectionEvent value)
        checkInternetConnection,
    required TResult Function(_ObserverConnectionEvent value)
        observerConnection,
    required TResult Function(_NotifyConnectionStatusEvent value)
        notifyConnectionStatus,
  }) {
    return notifyConnectionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult? Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult? Function(_ObserverConnectionEvent value)? observerConnection,
    TResult? Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
  }) {
    return notifyConnectionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_CheckTokenValidationEvent value)? checkTokenValidation,
    TResult Function(_CheckInternetConnectionEvent value)?
        checkInternetConnection,
    TResult Function(_ObserverConnectionEvent value)? observerConnection,
    TResult Function(_NotifyConnectionStatusEvent value)?
        notifyConnectionStatus,
    required TResult orElse(),
  }) {
    if (notifyConnectionStatus != null) {
      return notifyConnectionStatus(this);
    }
    return orElse();
  }
}

abstract class _NotifyConnectionStatusEvent implements AppLoadingEvent {
  const factory _NotifyConnectionStatusEvent(
      {required final bool isConnected}) = _$NotifyConnectionStatusEventImpl;

  bool get isConnected;

  /// Create a copy of AppLoadingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyConnectionStatusEventImplCopyWith<_$NotifyConnectionStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppLoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
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
    implements _AppLoadingInitialState {
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
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AppLoadingInitialState implements AppLoadingState {
  const factory _AppLoadingInitialState() = _$AppLoadingInitialStateImpl;
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
    implements _AppLoadingLoadingState {
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
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppLoadingLoadingState implements AppLoadingState {
  const factory _AppLoadingLoadingState() = _$AppLoadingLoadingStateImpl;
}

/// @nodoc
abstract class _$$AppLoadingSuccessStateImplCopyWith<$Res> {
  factory _$$AppLoadingSuccessStateImplCopyWith(
          _$AppLoadingSuccessStateImpl value,
          $Res Function(_$AppLoadingSuccessStateImpl) then) =
      __$$AppLoadingSuccessStateImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$AppLoadingSuccessStateImpl
    with DiagnosticableTreeMixin
    implements _AppLoadingSuccessState {
  const _$AppLoadingSuccessStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoadingSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppLoadingSuccessState implements AppLoadingState {
  const factory _AppLoadingSuccessState() = _$AppLoadingSuccessStateImpl;
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
    implements _AppLoadingErrorState {
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
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppLoadingErrorState implements AppLoadingState {
  const factory _AppLoadingErrorState(final String message) =
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
    implements _LoadToOnboardingState {
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
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return loadToOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return loadToOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return loadToOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return loadToOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (loadToOnboarding != null) {
      return loadToOnboarding(this);
    }
    return orElse();
  }
}

abstract class _LoadToOnboardingState implements AppLoadingState {
  const factory _LoadToOnboardingState() = _$LoadToOnboardingStateImpl;
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
    implements _LoadToHomeState {
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
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return loadToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return loadToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
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
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return loadToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return loadToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (loadToHome != null) {
      return loadToHome(this);
    }
    return orElse();
  }
}

abstract class _LoadToHomeState implements AppLoadingState {
  const factory _LoadToHomeState() = _$LoadToHomeStateImpl;
}

/// @nodoc
abstract class _$$LoadToSignInStateImplCopyWith<$Res> {
  factory _$$LoadToSignInStateImplCopyWith(_$LoadToSignInStateImpl value,
          $Res Function(_$LoadToSignInStateImpl) then) =
      __$$LoadToSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadToSignInStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$LoadToSignInStateImpl>
    implements _$$LoadToSignInStateImplCopyWith<$Res> {
  __$$LoadToSignInStateImplCopyWithImpl(_$LoadToSignInStateImpl _value,
      $Res Function(_$LoadToSignInStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadToSignInStateImpl
    with DiagnosticableTreeMixin
    implements _LoadToSignInState {
  const _$LoadToSignInStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.loadToSignIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.loadToSignIn'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadToSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return loadToSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return loadToSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (loadToSignIn != null) {
      return loadToSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return loadToSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return loadToSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (loadToSignIn != null) {
      return loadToSignIn(this);
    }
    return orElse();
  }
}

abstract class _LoadToSignInState implements AppLoadingState {
  const factory _LoadToSignInState() = _$LoadToSignInStateImpl;
}

/// @nodoc
abstract class _$$NoConnectionStateImplCopyWith<$Res> {
  factory _$$NoConnectionStateImplCopyWith(_$NoConnectionStateImpl value,
          $Res Function(_$NoConnectionStateImpl) then) =
      __$$NoConnectionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionStateImplCopyWithImpl<$Res>
    extends _$AppLoadingStateCopyWithImpl<$Res, _$NoConnectionStateImpl>
    implements _$$NoConnectionStateImplCopyWith<$Res> {
  __$$NoConnectionStateImplCopyWithImpl(_$NoConnectionStateImpl _value,
      $Res Function(_$NoConnectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoConnectionStateImpl
    with DiagnosticableTreeMixin
    implements _NoConnectionState {
  const _$NoConnectionStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppLoadingState.noConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppLoadingState.noConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function() loadToOnboarding,
    required TResult Function() loadToHome,
    required TResult Function() loadToSignIn,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function()? loadToOnboarding,
    TResult? Function()? loadToHome,
    TResult? Function()? loadToSignIn,
    TResult? Function()? noConnection,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function()? loadToOnboarding,
    TResult Function()? loadToHome,
    TResult Function()? loadToSignIn,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadingInitialState value) initial,
    required TResult Function(_AppLoadingLoadingState value) loading,
    required TResult Function(_AppLoadingSuccessState value) success,
    required TResult Function(_AppLoadingErrorState value) error,
    required TResult Function(_LoadToOnboardingState value) loadToOnboarding,
    required TResult Function(_LoadToHomeState value) loadToHome,
    required TResult Function(_LoadToSignInState value) loadToSignIn,
    required TResult Function(_NoConnectionState value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoadingInitialState value)? initial,
    TResult? Function(_AppLoadingLoadingState value)? loading,
    TResult? Function(_AppLoadingSuccessState value)? success,
    TResult? Function(_AppLoadingErrorState value)? error,
    TResult? Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult? Function(_LoadToHomeState value)? loadToHome,
    TResult? Function(_LoadToSignInState value)? loadToSignIn,
    TResult? Function(_NoConnectionState value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadingInitialState value)? initial,
    TResult Function(_AppLoadingLoadingState value)? loading,
    TResult Function(_AppLoadingSuccessState value)? success,
    TResult Function(_AppLoadingErrorState value)? error,
    TResult Function(_LoadToOnboardingState value)? loadToOnboarding,
    TResult Function(_LoadToHomeState value)? loadToHome,
    TResult Function(_LoadToSignInState value)? loadToSignIn,
    TResult Function(_NoConnectionState value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionState implements AppLoadingState {
  const factory _NoConnectionState() = _$NoConnectionStateImpl;
}
