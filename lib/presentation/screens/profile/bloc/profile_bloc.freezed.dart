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
    required TResult Function() loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function()? loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function()? loadUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfileEvent value) loadProfile,
    required TResult Function(_LoadUserDataEvent value) loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfileEvent value)? loadProfile,
    TResult? Function(_LoadUserDataEvent value)? loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfileEvent value)? loadProfile,
    TResult Function(_LoadUserDataEvent value)? loadUserData,
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

class _$LoadProfileEventImpl implements _LoadProfileEvent {
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
    required TResult Function() loadUserData,
  }) {
    return loadProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function()? loadUserData,
  }) {
    return loadProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function()? loadUserData,
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
    required TResult Function(_LoadProfileEvent value) loadProfile,
    required TResult Function(_LoadUserDataEvent value) loadUserData,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfileEvent value)? loadProfile,
    TResult? Function(_LoadUserDataEvent value)? loadUserData,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfileEvent value)? loadProfile,
    TResult Function(_LoadUserDataEvent value)? loadUserData,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadProfileEvent implements ProfileEvent {
  const factory _LoadProfileEvent() = _$LoadProfileEventImpl;
}

/// @nodoc
abstract class _$$LoadUserDataEventImplCopyWith<$Res> {
  factory _$$LoadUserDataEventImplCopyWith(_$LoadUserDataEventImpl value,
          $Res Function(_$LoadUserDataEventImpl) then) =
      __$$LoadUserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserDataEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadUserDataEventImpl>
    implements _$$LoadUserDataEventImplCopyWith<$Res> {
  __$$LoadUserDataEventImplCopyWithImpl(_$LoadUserDataEventImpl _value,
      $Res Function(_$LoadUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUserDataEventImpl implements _LoadUserDataEvent {
  const _$LoadUserDataEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.loadUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function() loadUserData,
  }) {
    return loadUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function()? loadUserData,
  }) {
    return loadUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function()? loadUserData,
    required TResult orElse(),
  }) {
    if (loadUserData != null) {
      return loadUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfileEvent value) loadProfile,
    required TResult Function(_LoadUserDataEvent value) loadUserData,
  }) {
    return loadUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfileEvent value)? loadProfile,
    TResult? Function(_LoadUserDataEvent value)? loadUserData,
  }) {
    return loadUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfileEvent value)? loadProfile,
    TResult Function(_LoadUserDataEvent value)? loadUserData,
    required TResult orElse(),
  }) {
    if (loadUserData != null) {
      return loadUserData(this);
    }
    return orElse();
  }
}

abstract class _LoadUserDataEvent implements ProfileEvent {
  const factory _LoadUserDataEvent() = _$LoadUserDataEventImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileErrorState value) error,
    required TResult Function(_ProfileLoadedState value) loaded,
    required TResult Function(_UserDataLoaded value) userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_UserDataLoaded value)? userDataLoaded,
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
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
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
    required TResult Function(_UserDataLoaded value) userDataLoaded,
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
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
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
    TResult Function(_UserDataLoaded value)? userDataLoaded,
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
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
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
    required TResult Function(_UserDataLoaded value) userDataLoaded,
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
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
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
    TResult Function(_UserDataLoaded value)? userDataLoaded,
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
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
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
    required TResult Function(_UserDataLoaded value) userDataLoaded,
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
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
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
    TResult Function(_UserDataLoaded value)? userDataLoaded,
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
      {UserModel? userData,
      List<StationModel>? stationsData,
      List<CarModel>? carsData});

  $UserModelCopyWith<$Res>? get userData;
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
    Object? userData = freezed,
    Object? stationsData = freezed,
    Object? carsData = freezed,
  }) {
    return _then(_$ProfileLoadedStateImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      stationsData: freezed == stationsData
          ? _value._stationsData
          : stationsData // ignore: cast_nullable_to_non_nullable
              as List<StationModel>?,
      carsData: freezed == carsData
          ? _value._carsData
          : carsData // ignore: cast_nullable_to_non_nullable
              as List<CarModel>?,
    ));
  }

  /// Create a copy of ProfileState
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

class _$ProfileLoadedStateImpl implements _ProfileLoadedState {
  const _$ProfileLoadedStateImpl(
      {this.userData,
      final List<StationModel>? stationsData,
      final List<CarModel>? carsData})
      : _stationsData = stationsData,
        _carsData = carsData;

  @override
  final UserModel? userData;
  final List<StationModel>? _stationsData;
  @override
  List<StationModel>? get stationsData {
    final value = _stationsData;
    if (value == null) return null;
    if (_stationsData is EqualUnmodifiableListView) return _stationsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CarModel>? _carsData;
  @override
  List<CarModel>? get carsData {
    final value = _carsData;
    if (value == null) return null;
    if (_carsData is EqualUnmodifiableListView) return _carsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileState.loaded(userData: $userData, stationsData: $stationsData, carsData: $carsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            const DeepCollectionEquality()
                .equals(other._stationsData, _stationsData) &&
            const DeepCollectionEquality().equals(other._carsData, _carsData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userData,
      const DeepCollectionEquality().hash(_stationsData),
      const DeepCollectionEquality().hash(_carsData));

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
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) {
    return loaded(userData, stationsData, carsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) {
    return loaded?.call(userData, stationsData, carsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userData, stationsData, carsData);
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
    required TResult Function(_UserDataLoaded value) userDataLoaded,
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
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
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
    TResult Function(_UserDataLoaded value)? userDataLoaded,
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
      {final UserModel? userData,
      final List<StationModel>? stationsData,
      final List<CarModel>? carsData}) = _$ProfileLoadedStateImpl;

  UserModel? get userData;
  List<StationModel>? get stationsData;
  List<CarModel>? get carsData;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedStateImplCopyWith<_$ProfileLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataLoadedImplCopyWith<$Res> {
  factory _$$UserDataLoadedImplCopyWith(_$UserDataLoadedImpl value,
          $Res Function(_$UserDataLoadedImpl) then) =
      __$$UserDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? userData});

  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$UserDataLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UserDataLoadedImpl>
    implements _$$UserDataLoadedImplCopyWith<$Res> {
  __$$UserDataLoadedImplCopyWithImpl(
      _$UserDataLoadedImpl _value, $Res Function(_$UserDataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(_$UserDataLoadedImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of ProfileState
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

class _$UserDataLoadedImpl implements _UserDataLoaded {
  const _$UserDataLoadedImpl({required this.userData});

  @override
  final UserModel? userData;

  @override
  String toString() {
    return 'ProfileState.userDataLoaded(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataLoadedImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      __$$UserDataLoadedImplCopyWithImpl<_$UserDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserModel? userData,
            List<StationModel>? stationsData, List<CarModel>? carsData)
        loaded,
    required TResult Function(UserModel? userData) userDataLoaded,
  }) {
    return userDataLoaded(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult? Function(UserModel? userData)? userDataLoaded,
  }) {
    return userDataLoaded?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserModel? userData, List<StationModel>? stationsData,
            List<CarModel>? carsData)?
        loaded,
    TResult Function(UserModel? userData)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataLoaded != null) {
      return userDataLoaded(userData);
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
    required TResult Function(_UserDataLoaded value) userDataLoaded,
  }) {
    return userDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileErrorState value)? error,
    TResult? Function(_ProfileLoadedState value)? loaded,
    TResult? Function(_UserDataLoaded value)? userDataLoaded,
  }) {
    return userDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileErrorState value)? error,
    TResult Function(_ProfileLoadedState value)? loaded,
    TResult Function(_UserDataLoaded value)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataLoaded != null) {
      return userDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserDataLoaded implements ProfileState {
  const factory _UserDataLoaded({required final UserModel? userData}) =
      _$UserDataLoadedImpl;

  UserModel? get userData;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
