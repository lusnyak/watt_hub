// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadStationEventImplCopyWith<$Res> {
  factory _$$LoadStationEventImplCopyWith(_$LoadStationEventImpl value,
          $Res Function(_$LoadStationEventImpl) then) =
      __$$LoadStationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadStationEventImpl>
    implements _$$LoadStationEventImplCopyWith<$Res> {
  __$$LoadStationEventImplCopyWithImpl(_$LoadStationEventImpl _value,
      $Res Function(_$LoadStationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadStationEventImpl implements _LoadStationEvent {
  const _$LoadStationEventImpl();

  @override
  String toString() {
    return 'HomeEvent.loadStationEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) {
    return loadStationEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) {
    return loadStationEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (loadStationEvent != null) {
      return loadStationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) {
    return loadStationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) {
    return loadStationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (loadStationEvent != null) {
      return loadStationEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadStationEvent implements HomeEvent {
  const factory _LoadStationEvent() = _$LoadStationEventImpl;
}

/// @nodoc
abstract class _$$ToggleViewEventImplCopyWith<$Res> {
  factory _$$ToggleViewEventImplCopyWith(_$ToggleViewEventImpl value,
          $Res Function(_$ToggleViewEventImpl) then) =
      __$$ToggleViewEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng? currentLocation});
}

/// @nodoc
class __$$ToggleViewEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ToggleViewEventImpl>
    implements _$$ToggleViewEventImplCopyWith<$Res> {
  __$$ToggleViewEventImplCopyWithImpl(
      _$ToggleViewEventImpl _value, $Res Function(_$ToggleViewEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_$ToggleViewEventImpl(
      freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$ToggleViewEventImpl implements _ToggleViewEvent {
  const _$ToggleViewEventImpl(this.currentLocation);

  @override
  final LatLng? currentLocation;

  @override
  String toString() {
    return 'HomeEvent.toggleViewEvent(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleViewEventImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleViewEventImplCopyWith<_$ToggleViewEventImpl> get copyWith =>
      __$$ToggleViewEventImplCopyWithImpl<_$ToggleViewEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) {
    return toggleViewEvent(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) {
    return toggleViewEvent?.call(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (toggleViewEvent != null) {
      return toggleViewEvent(currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) {
    return toggleViewEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) {
    return toggleViewEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (toggleViewEvent != null) {
      return toggleViewEvent(this);
    }
    return orElse();
  }
}

abstract class _ToggleViewEvent implements HomeEvent {
  const factory _ToggleViewEvent(final LatLng? currentLocation) =
      _$ToggleViewEventImpl;

  LatLng? get currentLocation;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleViewEventImplCopyWith<_$ToggleViewEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CenterLocationEventImplCopyWith<$Res> {
  factory _$$CenterLocationEventImplCopyWith(_$CenterLocationEventImpl value,
          $Res Function(_$CenterLocationEventImpl) then) =
      __$$CenterLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic currentLocation});
}

/// @nodoc
class __$$CenterLocationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CenterLocationEventImpl>
    implements _$$CenterLocationEventImplCopyWith<$Res> {
  __$$CenterLocationEventImplCopyWithImpl(_$CenterLocationEventImpl _value,
      $Res Function(_$CenterLocationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_$CenterLocationEventImpl(
      freezed == currentLocation ? _value.currentLocation! : currentLocation,
    ));
  }
}

/// @nodoc

class _$CenterLocationEventImpl implements _CenterLocationEvent {
  const _$CenterLocationEventImpl(this.currentLocation);

  @override
  final dynamic currentLocation;

  @override
  String toString() {
    return 'HomeEvent.centerLocationEvent(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterLocationEventImpl &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentLocation));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterLocationEventImplCopyWith<_$CenterLocationEventImpl> get copyWith =>
      __$$CenterLocationEventImplCopyWithImpl<_$CenterLocationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) {
    return centerLocationEvent(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) {
    return centerLocationEvent?.call(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (centerLocationEvent != null) {
      return centerLocationEvent(currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) {
    return centerLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) {
    return centerLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (centerLocationEvent != null) {
      return centerLocationEvent(this);
    }
    return orElse();
  }
}

abstract class _CenterLocationEvent implements HomeEvent {
  const factory _CenterLocationEvent(final dynamic currentLocation) =
      _$CenterLocationEventImpl;

  dynamic get currentLocation;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterLocationEventImplCopyWith<_$CenterLocationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CenterOnStationEventImplCopyWith<$Res> {
  factory _$$CenterOnStationEventImplCopyWith(_$CenterOnStationEventImpl value,
          $Res Function(_$CenterOnStationEventImpl) then) =
      __$$CenterOnStationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StationModel station, LatLng? currentLocation});

  $StationModelCopyWith<$Res> get station;
}

/// @nodoc
class __$$CenterOnStationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CenterOnStationEventImpl>
    implements _$$CenterOnStationEventImplCopyWith<$Res> {
  __$$CenterOnStationEventImplCopyWithImpl(_$CenterOnStationEventImpl _value,
      $Res Function(_$CenterOnStationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_$CenterOnStationEventImpl(
      null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel,
      freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationModelCopyWith<$Res> get station {
    return $StationModelCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value));
    });
  }
}

/// @nodoc

class _$CenterOnStationEventImpl implements _CenterOnStationEvent {
  const _$CenterOnStationEventImpl(this.station, this.currentLocation);

  @override
  final StationModel station;
  @override
  final LatLng? currentLocation;

  @override
  String toString() {
    return 'HomeEvent.centerOnStation(station: $station, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterOnStationEventImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station, currentLocation);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterOnStationEventImplCopyWith<_$CenterOnStationEventImpl>
      get copyWith =>
          __$$CenterOnStationEventImplCopyWithImpl<_$CenterOnStationEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) {
    return centerOnStation(station, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) {
    return centerOnStation?.call(station, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (centerOnStation != null) {
      return centerOnStation(station, currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) {
    return centerOnStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) {
    return centerOnStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (centerOnStation != null) {
      return centerOnStation(this);
    }
    return orElse();
  }
}

abstract class _CenterOnStationEvent implements HomeEvent {
  const factory _CenterOnStationEvent(
          final StationModel station, final LatLng? currentLocation) =
      _$CenterOnStationEventImpl;

  StationModel get station;
  LatLng? get currentLocation;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterOnStationEventImplCopyWith<_$CenterOnStationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFiltersEventImplCopyWith<$Res> {
  factory _$$LoadFiltersEventImplCopyWith(_$LoadFiltersEventImpl value,
          $Res Function(_$LoadFiltersEventImpl) then) =
      __$$LoadFiltersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFiltersEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadFiltersEventImpl>
    implements _$$LoadFiltersEventImplCopyWith<$Res> {
  __$$LoadFiltersEventImplCopyWithImpl(_$LoadFiltersEventImpl _value,
      $Res Function(_$LoadFiltersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFiltersEventImpl implements _LoadFiltersEvent {
  const _$LoadFiltersEventImpl();

  @override
  String toString() {
    return 'HomeEvent.loadFiltersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFiltersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStationEvent,
    required TResult Function(LatLng? currentLocation) toggleViewEvent,
    required TResult Function(dynamic currentLocation) centerLocationEvent,
    required TResult Function(StationModel station, LatLng? currentLocation)
        centerOnStation,
    required TResult Function() loadFiltersEvent,
  }) {
    return loadFiltersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStationEvent,
    TResult? Function(LatLng? currentLocation)? toggleViewEvent,
    TResult? Function(dynamic currentLocation)? centerLocationEvent,
    TResult? Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult? Function()? loadFiltersEvent,
  }) {
    return loadFiltersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStationEvent,
    TResult Function(LatLng? currentLocation)? toggleViewEvent,
    TResult Function(dynamic currentLocation)? centerLocationEvent,
    TResult Function(StationModel station, LatLng? currentLocation)?
        centerOnStation,
    TResult Function()? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (loadFiltersEvent != null) {
      return loadFiltersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStationEvent value) loadStationEvent,
    required TResult Function(_ToggleViewEvent value) toggleViewEvent,
    required TResult Function(_CenterLocationEvent value) centerLocationEvent,
    required TResult Function(_CenterOnStationEvent value) centerOnStation,
    required TResult Function(_LoadFiltersEvent value) loadFiltersEvent,
  }) {
    return loadFiltersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStationEvent value)? loadStationEvent,
    TResult? Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult? Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult? Function(_CenterOnStationEvent value)? centerOnStation,
    TResult? Function(_LoadFiltersEvent value)? loadFiltersEvent,
  }) {
    return loadFiltersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStationEvent value)? loadStationEvent,
    TResult Function(_ToggleViewEvent value)? toggleViewEvent,
    TResult Function(_CenterLocationEvent value)? centerLocationEvent,
    TResult Function(_CenterOnStationEvent value)? centerOnStation,
    TResult Function(_LoadFiltersEvent value)? loadFiltersEvent,
    required TResult orElse(),
  }) {
    if (loadFiltersEvent != null) {
      return loadFiltersEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadFiltersEvent implements HomeEvent {
  const factory _LoadFiltersEvent() = _$LoadFiltersEventImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements HomeState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements HomeState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements HomeState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewChangedStateImplCopyWith<$Res> {
  factory _$$ViewChangedStateImplCopyWith(_$ViewChangedStateImpl value,
          $Res Function(_$ViewChangedStateImpl) then) =
      __$$ViewChangedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isList});
}

/// @nodoc
class __$$ViewChangedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ViewChangedStateImpl>
    implements _$$ViewChangedStateImplCopyWith<$Res> {
  __$$ViewChangedStateImplCopyWithImpl(_$ViewChangedStateImpl _value,
      $Res Function(_$ViewChangedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isList = null,
  }) {
    return _then(_$ViewChangedStateImpl(
      null == isList
          ? _value.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ViewChangedStateImpl implements ViewChangedState {
  const _$ViewChangedStateImpl(this.isList);

  @override
  final bool isList;

  @override
  String toString() {
    return 'HomeState.viewChanged(isList: $isList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewChangedStateImpl &&
            (identical(other.isList, isList) || other.isList == isList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isList);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewChangedStateImplCopyWith<_$ViewChangedStateImpl> get copyWith =>
      __$$ViewChangedStateImplCopyWithImpl<_$ViewChangedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) {
    return viewChanged(isList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) {
    return viewChanged?.call(isList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
    required TResult orElse(),
  }) {
    if (viewChanged != null) {
      return viewChanged(isList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) {
    return viewChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return viewChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (viewChanged != null) {
      return viewChanged(this);
    }
    return orElse();
  }
}

abstract class ViewChangedState implements HomeState {
  const factory ViewChangedState(final bool isList) = _$ViewChangedStateImpl;

  bool get isList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewChangedStateImplCopyWith<_$ViewChangedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StationModel> stations,
      bool isList,
      LatLng? currentLocation,
      bool isMapReady});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
    Object? isList = null,
    Object? currentLocation = freezed,
    Object? isMapReady = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
      isList: null == isList
          ? _value.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(final List<StationModel> stations,
      {this.isList = true, this.currentLocation, this.isMapReady = false})
      : _stations = stations;

  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  @JsonKey()
  final bool isList;
  @override
  final LatLng? currentLocation;
  @override
  @JsonKey()
  final bool isMapReady;

  @override
  String toString() {
    return 'HomeState.loaded(stations: $stations, isList: $isList, currentLocation: $currentLocation, isMapReady: $isMapReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.isList, isList) || other.isList == isList) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stations),
      isList,
      currentLocation,
      isMapReady);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)
        loaded,
  }) {
    return loaded(stations, isList, currentLocation, isMapReady);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
  }) {
    return loaded?.call(stations, isList, currentLocation, isMapReady);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList,
            LatLng? currentLocation, bool isMapReady)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stations, isList, currentLocation, isMapReady);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ViewChangedState value) viewChanged,
    required TResult Function(LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ViewChangedState value)? viewChanged,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ViewChangedState value)? viewChanged,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements HomeState {
  const factory LoadedState(final List<StationModel> stations,
      {final bool isList,
      final LatLng? currentLocation,
      final bool isMapReady}) = _$LoadedStateImpl;

  List<StationModel> get stations;
  bool get isList;
  LatLng? get currentLocation;
  bool get isMapReady;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
