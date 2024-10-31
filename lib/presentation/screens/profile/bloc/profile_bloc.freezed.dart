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
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
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
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)
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
    TResult? Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
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
abstract class _$$ProfileLoadingStateImplCopyWith<$Res> {
  factory _$$ProfileLoadingStateImplCopyWith(_$ProfileLoadingStateImpl value,
          $Res Function(_$ProfileLoadingStateImpl) then) =
      __$$ProfileLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingStateImpl>
    implements _$$ProfileLoadingStateImplCopyWith<$Res> {
  __$$ProfileLoadingStateImplCopyWithImpl(_$ProfileLoadingStateImpl _value,
      $Res Function(_$ProfileLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingStateImpl implements _ProfileLoadingState {
  const _$ProfileLoadingStateImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)
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
    TResult? Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadingState implements ProfileState {
  const factory _ProfileLoadingState() = _$ProfileLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProfileErrorStateImplCopyWith<$Res> {
  factory _$$ProfileErrorStateImplCopyWith(_$ProfileErrorStateImpl value,
          $Res Function(_$ProfileErrorStateImpl) then) =
      __$$ProfileErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileErrorStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorStateImpl>
    implements _$$ProfileErrorStateImplCopyWith<$Res> {
  __$$ProfileErrorStateImplCopyWithImpl(_$ProfileErrorStateImpl _value,
      $Res Function(_$ProfileErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorStateImpl implements _ProfileErrorState {
  const _$ProfileErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorStateImplCopyWith<_$ProfileErrorStateImpl> get copyWith =>
      __$$ProfileErrorStateImplCopyWithImpl<_$ProfileErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)
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
    TResult? Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProfileErrorState implements ProfileState {
  const factory _ProfileErrorState(final String message) =
      _$ProfileErrorStateImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorStateImplCopyWith<_$ProfileErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoadedStateImplCopyWith<$Res> {
  factory _$$ProfileLoadedStateImplCopyWith(_$ProfileLoadedStateImpl value,
          $Res Function(_$ProfileLoadedStateImpl) then) =
      __$$ProfileLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserModel userData, StationModel? stationData, List<CarModel>? carData});

  $UserModelCopyWith<$Res> get userData;
  $StationModelCopyWith<$Res>? get stationData;
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
    Object? userData = null,
    Object? stationData = freezed,
    Object? carData = freezed,
  }) {
    return _then(_$ProfileLoadedStateImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
      stationData: freezed == stationData
          ? _value.stationData
          : stationData // ignore: cast_nullable_to_non_nullable
              as StationModel?,
      carData: freezed == carData
          ? _value._carData
          : carData // ignore: cast_nullable_to_non_nullable
              as List<CarModel>?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userData {
    return $UserModelCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationModelCopyWith<$Res>? get stationData {
    if (_value.stationData == null) {
      return null;
    }

    return $StationModelCopyWith<$Res>(_value.stationData!, (value) {
      return _then(_value.copyWith(stationData: value));
    });
  }
}

/// @nodoc

class _$ProfileLoadedStateImpl implements _ProfileLoadedState {
  const _$ProfileLoadedStateImpl(
      {required this.userData, this.stationData, final List<CarModel>? carData})
      : _carData = carData;

  @override
  final UserModel userData;
  @override
  final StationModel? stationData;
  final List<CarModel>? _carData;
  @override
  List<CarModel>? get carData {
    final value = _carData;
    if (value == null) return null;
    if (_carData is EqualUnmodifiableListView) return _carData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileState.loaded(userData: $userData, stationData: $stationData, carData: $carData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.stationData, stationData) ||
                other.stationData == stationData) &&
            const DeepCollectionEquality().equals(other._carData, _carData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, stationData,
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
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)
        loaded,
  }) {
    return loaded(userData, stationData, carData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
        loaded,
  }) {
    return loaded?.call(userData, stationData, carData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel userData, StationModel? stationData,
            List<CarModel>? carData)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userData, stationData, carData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
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
      {required final UserModel userData,
      final StationModel? stationData,
      final List<CarModel>? carData}) = _$ProfileLoadedStateImpl;

  UserModel get userData;
  StationModel? get stationData;
  List<CarModel>? get carData;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedStateImplCopyWith<_$ProfileLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
