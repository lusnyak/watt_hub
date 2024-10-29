// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProfileEventImplCopyWith<$Res> {
  factory _$$LoadProfileEventImplCopyWith(_$LoadProfileEventImpl value,
          $Res Function(_$LoadProfileEventImpl) then) =
      __$$LoadProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileEventImpl>
    implements _$$LoadProfileEventImplCopyWith<$Res> {
  __$$LoadProfileEventImplCopyWithImpl(_$LoadProfileEventImpl _value,
      $Res Function(_$LoadProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProfileEventImpl implements LoadProfileEvent {
  const _$LoadProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.loadProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
  }) {
    return loadProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
  }) {
    return loadProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class LoadProfileEvent implements ProfileEvent {
  const factory LoadProfileEvent() = _$LoadProfileEventImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)
        loaded,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadedState value) loaded,
    required TResult Function(_ProfileCompleteState value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_ProfileCompleteState value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_ProfileCompleteState value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileInitialStateImplCopyWith<$Res> {
  factory _$$ProfileInitialStateImplCopyWith(_$ProfileInitialStateImpl value,
          $Res Function(_$ProfileInitialStateImpl) then) =
      __$$ProfileInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialStateImpl>
    implements _$$ProfileInitialStateImplCopyWith<$Res> {
  __$$ProfileInitialStateImplCopyWithImpl(_$ProfileInitialStateImpl _value,
      $Res Function(_$ProfileInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileInitialStateImpl implements _ProfileInitialState {
  const _$ProfileInitialStateImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)
        loaded,
    required TResult Function() complete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult? Function()? complete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult Function()? complete,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadedState value) loaded,
    required TResult Function(_ProfileCompleteState value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_ProfileCompleteState value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_ProfileCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProfileInitialState implements ProfileState {
  const factory _ProfileInitialState() = _$ProfileInitialStateImpl;
}

/// @nodoc
abstract class _$$ProfileLoadedStateImplCopyWith<$Res> {
  factory _$$ProfileLoadedStateImplCopyWith(_$ProfileLoadedStateImpl value,
          $Res Function(_$ProfileLoadedStateImpl) then) =
      __$$ProfileLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<String, dynamic> profileData,
      Map<String, dynamic> stationData,
      Map<String, dynamic> carData});
}

/// @nodoc
class __$$ProfileLoadedStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedStateImpl>
    implements _$$ProfileLoadedStateImplCopyWith<$Res> {
  __$$ProfileLoadedStateImplCopyWithImpl(_$ProfileLoadedStateImpl _value,
      $Res Function(_$ProfileLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? stationData = null,
    Object? carData = null,
  }) {
    return _then(_$ProfileLoadedStateImpl(
      null == profileData
          ? _value._profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      null == stationData
          ? _value._stationData
          : stationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      null == carData
          ? _value._carData
          : carData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ProfileLoadedStateImpl implements _ProfileLoadedState {
  const _$ProfileLoadedStateImpl(
      final Map<String, dynamic> profileData,
      final Map<String, dynamic> stationData,
      final Map<String, dynamic> carData)
      : _profileData = profileData,
        _stationData = stationData,
        _carData = carData;

  final Map<String, dynamic> _profileData;
  @override
  Map<String, dynamic> get profileData {
    if (_profileData is EqualUnmodifiableMapView) return _profileData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_profileData);
  }

  final Map<String, dynamic> _stationData;
  @override
  Map<String, dynamic> get stationData {
    if (_stationData is EqualUnmodifiableMapView) return _stationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stationData);
  }

  final Map<String, dynamic> _carData;
  @override
  Map<String, dynamic> get carData {
    if (_carData is EqualUnmodifiableMapView) return _carData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_carData);
  }

  @override
  String toString() {
    return 'ProfileState.loaded(profileData: $profileData, stationData: $stationData, carData: $carData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._profileData, _profileData) &&
            const DeepCollectionEquality()
                .equals(other._stationData, _stationData) &&
            const DeepCollectionEquality().equals(other._carData, _carData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_profileData),
      const DeepCollectionEquality().hash(_stationData),
      const DeepCollectionEquality().hash(_carData));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedStateImplCopyWith<_$ProfileLoadedStateImpl> get copyWith =>
      __$$ProfileLoadedStateImplCopyWithImpl<_$ProfileLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)
        loaded,
    required TResult Function() complete,
  }) {
    return loaded(profileData, stationData, carData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult? Function()? complete,
  }) {
    return loaded?.call(profileData, stationData, carData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profileData, stationData, carData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadedState value) loaded,
    required TResult Function(_ProfileCompleteState value) complete,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_ProfileCompleteState value)? complete,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_ProfileCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadedState implements ProfileState {
  const factory _ProfileLoadedState(
      final Map<String, dynamic> profileData,
      final Map<String, dynamic> stationData,
      final Map<String, dynamic> carData) = _$ProfileLoadedStateImpl;

  Map<String, dynamic> get profileData;
  Map<String, dynamic> get stationData;
  Map<String, dynamic> get carData;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedStateImplCopyWith<_$ProfileLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileCompleteStateImplCopyWith<$Res> {
  factory _$$ProfileCompleteStateImplCopyWith(_$ProfileCompleteStateImpl value,
          $Res Function(_$ProfileCompleteStateImpl) then) =
      __$$ProfileCompleteStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileCompleteStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileCompleteStateImpl>
    implements _$$ProfileCompleteStateImplCopyWith<$Res> {
  __$$ProfileCompleteStateImplCopyWithImpl(_$ProfileCompleteStateImpl _value,
      $Res Function(_$ProfileCompleteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileCompleteStateImpl implements _ProfileCompleteState {
  const _$ProfileCompleteStateImpl();

  @override
  String toString() {
    return 'ProfileState.complete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCompleteStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)
        loaded,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, dynamic> profileData,
            Map<String, dynamic> stationData, Map<String, dynamic> carData)?
        loaded,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadedState value) loaded,
    required TResult Function(_ProfileCompleteState value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_ProfileCompleteState value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_ProfileCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _ProfileCompleteState implements ProfileState {
  const factory _ProfileCompleteState() = _$ProfileCompleteStateImpl;
}
