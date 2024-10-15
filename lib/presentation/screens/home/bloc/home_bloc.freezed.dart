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
    required TResult Function() loadStation,
    required TResult Function() toggleView,
    required TResult Function() centerLocation,
    required TResult Function(StationModel station) centerOnStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStation,
    TResult? Function()? toggleView,
    TResult? Function()? centerLocation,
    TResult? Function(StationModel station)? centerOnStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStation,
    TResult Function()? toggleView,
    TResult Function()? centerLocation,
    TResult Function(StationModel station)? centerOnStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStation value) loadStation,
    required TResult Function(ToggleView value) toggleView,
    required TResult Function(CenterLocation value) centerLocation,
    required TResult Function(CenterOnStation value) centerOnStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStation value)? loadStation,
    TResult? Function(ToggleView value)? toggleView,
    TResult? Function(CenterLocation value)? centerLocation,
    TResult? Function(CenterOnStation value)? centerOnStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStation value)? loadStation,
    TResult Function(ToggleView value)? toggleView,
    TResult Function(CenterLocation value)? centerLocation,
    TResult Function(CenterOnStation value)? centerOnStation,
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
abstract class _$$LoadStationImplCopyWith<$Res> {
  factory _$$LoadStationImplCopyWith(
          _$LoadStationImpl value, $Res Function(_$LoadStationImpl) then) =
      __$$LoadStationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadStationImpl>
    implements _$$LoadStationImplCopyWith<$Res> {
  __$$LoadStationImplCopyWithImpl(
      _$LoadStationImpl _value, $Res Function(_$LoadStationImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadStationImpl implements LoadStation {
  const _$LoadStationImpl();

  @override
  String toString() {
    return 'HomeEvent.loadStation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStation,
    required TResult Function() toggleView,
    required TResult Function() centerLocation,
    required TResult Function(StationModel station) centerOnStation,
  }) {
    return loadStation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStation,
    TResult? Function()? toggleView,
    TResult? Function()? centerLocation,
    TResult? Function(StationModel station)? centerOnStation,
  }) {
    return loadStation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStation,
    TResult Function()? toggleView,
    TResult Function()? centerLocation,
    TResult Function(StationModel station)? centerOnStation,
    required TResult orElse(),
  }) {
    if (loadStation != null) {
      return loadStation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStation value) loadStation,
    required TResult Function(ToggleView value) toggleView,
    required TResult Function(CenterLocation value) centerLocation,
    required TResult Function(CenterOnStation value) centerOnStation,
  }) {
    return loadStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStation value)? loadStation,
    TResult? Function(ToggleView value)? toggleView,
    TResult? Function(CenterLocation value)? centerLocation,
    TResult? Function(CenterOnStation value)? centerOnStation,
  }) {
    return loadStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStation value)? loadStation,
    TResult Function(ToggleView value)? toggleView,
    TResult Function(CenterLocation value)? centerLocation,
    TResult Function(CenterOnStation value)? centerOnStation,
    required TResult orElse(),
  }) {
    if (loadStation != null) {
      return loadStation(this);
    }
    return orElse();
  }
}

abstract class LoadStation implements HomeEvent {
  const factory LoadStation() = _$LoadStationImpl;
}

/// @nodoc
abstract class _$$ToggleViewImplCopyWith<$Res> {
  factory _$$ToggleViewImplCopyWith(
          _$ToggleViewImpl value, $Res Function(_$ToggleViewImpl) then) =
      __$$ToggleViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleViewImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ToggleViewImpl>
    implements _$$ToggleViewImplCopyWith<$Res> {
  __$$ToggleViewImplCopyWithImpl(
      _$ToggleViewImpl _value, $Res Function(_$ToggleViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleViewImpl implements ToggleView {
  const _$ToggleViewImpl();

  @override
  String toString() {
    return 'HomeEvent.toggleView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStation,
    required TResult Function() toggleView,
    required TResult Function() centerLocation,
    required TResult Function(StationModel station) centerOnStation,
  }) {
    return toggleView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStation,
    TResult? Function()? toggleView,
    TResult? Function()? centerLocation,
    TResult? Function(StationModel station)? centerOnStation,
  }) {
    return toggleView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStation,
    TResult Function()? toggleView,
    TResult Function()? centerLocation,
    TResult Function(StationModel station)? centerOnStation,
    required TResult orElse(),
  }) {
    if (toggleView != null) {
      return toggleView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStation value) loadStation,
    required TResult Function(ToggleView value) toggleView,
    required TResult Function(CenterLocation value) centerLocation,
    required TResult Function(CenterOnStation value) centerOnStation,
  }) {
    return toggleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStation value)? loadStation,
    TResult? Function(ToggleView value)? toggleView,
    TResult? Function(CenterLocation value)? centerLocation,
    TResult? Function(CenterOnStation value)? centerOnStation,
  }) {
    return toggleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStation value)? loadStation,
    TResult Function(ToggleView value)? toggleView,
    TResult Function(CenterLocation value)? centerLocation,
    TResult Function(CenterOnStation value)? centerOnStation,
    required TResult orElse(),
  }) {
    if (toggleView != null) {
      return toggleView(this);
    }
    return orElse();
  }
}

abstract class ToggleView implements HomeEvent {
  const factory ToggleView() = _$ToggleViewImpl;
}

/// @nodoc
abstract class _$$CenterLocationImplCopyWith<$Res> {
  factory _$$CenterLocationImplCopyWith(_$CenterLocationImpl value,
          $Res Function(_$CenterLocationImpl) then) =
      __$$CenterLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CenterLocationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CenterLocationImpl>
    implements _$$CenterLocationImplCopyWith<$Res> {
  __$$CenterLocationImplCopyWithImpl(
      _$CenterLocationImpl _value, $Res Function(_$CenterLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CenterLocationImpl implements CenterLocation {
  const _$CenterLocationImpl();

  @override
  String toString() {
    return 'HomeEvent.centerLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CenterLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStation,
    required TResult Function() toggleView,
    required TResult Function() centerLocation,
    required TResult Function(StationModel station) centerOnStation,
  }) {
    return centerLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStation,
    TResult? Function()? toggleView,
    TResult? Function()? centerLocation,
    TResult? Function(StationModel station)? centerOnStation,
  }) {
    return centerLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStation,
    TResult Function()? toggleView,
    TResult Function()? centerLocation,
    TResult Function(StationModel station)? centerOnStation,
    required TResult orElse(),
  }) {
    if (centerLocation != null) {
      return centerLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStation value) loadStation,
    required TResult Function(ToggleView value) toggleView,
    required TResult Function(CenterLocation value) centerLocation,
    required TResult Function(CenterOnStation value) centerOnStation,
  }) {
    return centerLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStation value)? loadStation,
    TResult? Function(ToggleView value)? toggleView,
    TResult? Function(CenterLocation value)? centerLocation,
    TResult? Function(CenterOnStation value)? centerOnStation,
  }) {
    return centerLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStation value)? loadStation,
    TResult Function(ToggleView value)? toggleView,
    TResult Function(CenterLocation value)? centerLocation,
    TResult Function(CenterOnStation value)? centerOnStation,
    required TResult orElse(),
  }) {
    if (centerLocation != null) {
      return centerLocation(this);
    }
    return orElse();
  }
}

abstract class CenterLocation implements HomeEvent {
  const factory CenterLocation() = _$CenterLocationImpl;
}

/// @nodoc
abstract class _$$CenterOnStationImplCopyWith<$Res> {
  factory _$$CenterOnStationImplCopyWith(_$CenterOnStationImpl value,
          $Res Function(_$CenterOnStationImpl) then) =
      __$$CenterOnStationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StationModel station});

  $StationModelCopyWith<$Res> get station;
}

/// @nodoc
class __$$CenterOnStationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CenterOnStationImpl>
    implements _$$CenterOnStationImplCopyWith<$Res> {
  __$$CenterOnStationImplCopyWithImpl(
      _$CenterOnStationImpl _value, $Res Function(_$CenterOnStationImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
  }) {
    return _then(_$CenterOnStationImpl(
      null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel,
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

class _$CenterOnStationImpl implements CenterOnStation {
  const _$CenterOnStationImpl(this.station);

  @override
  final StationModel station;

  @override
  String toString() {
    return 'HomeEvent.centerOnStation(station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterOnStationImpl &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterOnStationImplCopyWith<_$CenterOnStationImpl> get copyWith =>
      __$$CenterOnStationImplCopyWithImpl<_$CenterOnStationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStation,
    required TResult Function() toggleView,
    required TResult Function() centerLocation,
    required TResult Function(StationModel station) centerOnStation,
  }) {
    return centerOnStation(station);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStation,
    TResult? Function()? toggleView,
    TResult? Function()? centerLocation,
    TResult? Function(StationModel station)? centerOnStation,
  }) {
    return centerOnStation?.call(station);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStation,
    TResult Function()? toggleView,
    TResult Function()? centerLocation,
    TResult Function(StationModel station)? centerOnStation,
    required TResult orElse(),
  }) {
    if (centerOnStation != null) {
      return centerOnStation(station);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStation value) loadStation,
    required TResult Function(ToggleView value) toggleView,
    required TResult Function(CenterLocation value) centerLocation,
    required TResult Function(CenterOnStation value) centerOnStation,
  }) {
    return centerOnStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStation value)? loadStation,
    TResult? Function(ToggleView value)? toggleView,
    TResult? Function(CenterLocation value)? centerLocation,
    TResult? Function(CenterOnStation value)? centerOnStation,
  }) {
    return centerOnStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStation value)? loadStation,
    TResult Function(ToggleView value)? toggleView,
    TResult Function(CenterLocation value)? centerLocation,
    TResult Function(CenterOnStation value)? centerOnStation,
    required TResult orElse(),
  }) {
    if (centerOnStation != null) {
      return centerOnStation(this);
    }
    return orElse();
  }
}

abstract class CenterOnStation implements HomeEvent {
  const factory CenterOnStation(final StationModel station) =
      _$CenterOnStationImpl;

  StationModel get station;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterOnStationImplCopyWith<_$CenterOnStationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isList) viewChanged,
    required TResult Function(List<StationModel> stations, bool isList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList)? loaded,
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
    required TResult Function(List<StationModel> stations, bool isList) loaded,
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
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
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
    TResult Function(List<StationModel> stations, bool isList)? loaded,
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
    required TResult Function(List<StationModel> stations, bool isList) loaded,
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
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
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
    TResult Function(List<StationModel> stations, bool isList)? loaded,
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
    required TResult Function(List<StationModel> stations, bool isList) loaded,
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
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
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
    TResult Function(List<StationModel> stations, bool isList)? loaded,
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
    required TResult Function(List<StationModel> stations, bool isList) loaded,
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
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
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
    TResult Function(List<StationModel> stations, bool isList)? loaded,
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
  $Res call({List<StationModel> stations, bool isList});
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
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(final List<StationModel> stations,
      {required this.isList})
      : _stations = stations;

  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  final bool isList;

  @override
  String toString() {
    return 'HomeState.loaded(stations: $stations, isList: $isList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.isList, isList) || other.isList == isList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stations), isList);

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
    required TResult Function(List<StationModel> stations, bool isList) loaded,
  }) {
    return loaded(stations, isList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isList)? viewChanged,
    TResult? Function(List<StationModel> stations, bool isList)? loaded,
  }) {
    return loaded?.call(stations, isList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isList)? viewChanged,
    TResult Function(List<StationModel> stations, bool isList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stations, isList);
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
      {required final bool isList}) = _$LoadedStateImpl;

  List<StationModel> get stations;
  bool get isList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
