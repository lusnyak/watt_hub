// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestsEvent {
  SegmentOption get selectedOption => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SegmentOption selectedOption) loadMyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SegmentOption selectedOption)? loadMyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SegmentOption selectedOption)? loadMyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyRequestsEvent value) loadMyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyRequestsEvent value)? loadMyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyRequestsEvent value)? loadMyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestsEventCopyWith<RequestsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsEventCopyWith<$Res> {
  factory $RequestsEventCopyWith(
          RequestsEvent value, $Res Function(RequestsEvent) then) =
      _$RequestsEventCopyWithImpl<$Res, RequestsEvent>;
  @useResult
  $Res call({SegmentOption selectedOption});
}

/// @nodoc
class _$RequestsEventCopyWithImpl<$Res, $Val extends RequestsEvent>
    implements $RequestsEventCopyWith<$Res> {
  _$RequestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_value.copyWith(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadMyRequestsEventImplCopyWith<$Res>
    implements $RequestsEventCopyWith<$Res> {
  factory _$$LoadMyRequestsEventImplCopyWith(_$LoadMyRequestsEventImpl value,
          $Res Function(_$LoadMyRequestsEventImpl) then) =
      __$$LoadMyRequestsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SegmentOption selectedOption});
}

/// @nodoc
class __$$LoadMyRequestsEventImplCopyWithImpl<$Res>
    extends _$RequestsEventCopyWithImpl<$Res, _$LoadMyRequestsEventImpl>
    implements _$$LoadMyRequestsEventImplCopyWith<$Res> {
  __$$LoadMyRequestsEventImplCopyWithImpl(_$LoadMyRequestsEventImpl _value,
      $Res Function(_$LoadMyRequestsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$LoadMyRequestsEventImpl(
      null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
    ));
  }
}

/// @nodoc

class _$LoadMyRequestsEventImpl implements _LoadMyRequestsEvent {
  const _$LoadMyRequestsEventImpl(this.selectedOption);

  @override
  final SegmentOption selectedOption;

  @override
  String toString() {
    return 'RequestsEvent.loadMyRequests(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMyRequestsEventImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMyRequestsEventImplCopyWith<_$LoadMyRequestsEventImpl> get copyWith =>
      __$$LoadMyRequestsEventImplCopyWithImpl<_$LoadMyRequestsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SegmentOption selectedOption) loadMyRequests,
  }) {
    return loadMyRequests(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SegmentOption selectedOption)? loadMyRequests,
  }) {
    return loadMyRequests?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SegmentOption selectedOption)? loadMyRequests,
    required TResult orElse(),
  }) {
    if (loadMyRequests != null) {
      return loadMyRequests(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyRequestsEvent value) loadMyRequests,
  }) {
    return loadMyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyRequestsEvent value)? loadMyRequests,
  }) {
    return loadMyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyRequestsEvent value)? loadMyRequests,
    required TResult orElse(),
  }) {
    if (loadMyRequests != null) {
      return loadMyRequests(this);
    }
    return orElse();
  }
}

abstract class _LoadMyRequestsEvent implements RequestsEvent {
  const factory _LoadMyRequestsEvent(final SegmentOption selectedOption) =
      _$LoadMyRequestsEventImpl;

  @override
  SegmentOption get selectedOption;

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMyRequestsEventImplCopyWith<_$LoadMyRequestsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SegmentOption selectedOption) loading,
    required TResult Function(String message) error,
    required TResult Function(SegmentOption selectedOption,
            List<OrderModel> myRequests, List<OrderModel> stationRequests)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? loading,
    TResult? Function(String message)? error,
    TResult? Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? loading,
    TResult Function(String message)? error,
    TResult Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsStateCopyWith<$Res> {
  factory $RequestsStateCopyWith(
          RequestsState value, $Res Function(RequestsState) then) =
      _$RequestsStateCopyWithImpl<$Res, RequestsState>;
}

/// @nodoc
class _$RequestsStateCopyWithImpl<$Res, $Val extends RequestsState>
    implements $RequestsStateCopyWith<$Res> {
  _$RequestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsState
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
    extends _$RequestsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'RequestsState.initial()';
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
    required TResult Function(SegmentOption selectedOption) loading,
    required TResult Function(String message) error,
    required TResult Function(SegmentOption selectedOption,
            List<OrderModel> myRequests, List<OrderModel> stationRequests)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? loading,
    TResult? Function(String message)? error,
    TResult? Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? loading,
    TResult Function(String message)? error,
    TResult Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
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
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements RequestsState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SegmentOption selectedOption});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$LoadingStateImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'RequestsState.loading(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SegmentOption selectedOption) loading,
    required TResult Function(String message) error,
    required TResult Function(SegmentOption selectedOption,
            List<OrderModel> myRequests, List<OrderModel> stationRequests)
        loaded,
  }) {
    return loading(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? loading,
    TResult? Function(String message)? error,
    TResult? Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
  }) {
    return loading?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? loading,
    TResult Function(String message)? error,
    TResult Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
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
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements RequestsState {
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
    extends _$RequestsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
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
    return 'RequestsState.error(message: $message)';
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

  /// Create a copy of RequestsState
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
    required TResult Function(SegmentOption selectedOption) loading,
    required TResult Function(String message) error,
    required TResult Function(SegmentOption selectedOption,
            List<OrderModel> myRequests, List<OrderModel> stationRequests)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? loading,
    TResult? Function(String message)? error,
    TResult? Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? loading,
    TResult Function(String message)? error,
    TResult Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
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
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements RequestsState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {SegmentOption selectedOption,
      List<OrderModel> myRequests,
      List<OrderModel> stationRequests});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
    Object? myRequests = null,
    Object? stationRequests = null,
  }) {
    return _then(_$LoadedStateImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
      myRequests: null == myRequests
          ? _value._myRequests
          : myRequests // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      stationRequests: null == stationRequests
          ? _value._stationRequests
          : stationRequests // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(
      {this.selectedOption = SegmentOption.my,
      final List<OrderModel> myRequests = const [],
      final List<OrderModel> stationRequests = const []})
      : _myRequests = myRequests,
        _stationRequests = stationRequests;

  @override
  @JsonKey()
  final SegmentOption selectedOption;
  final List<OrderModel> _myRequests;
  @override
  @JsonKey()
  List<OrderModel> get myRequests {
    if (_myRequests is EqualUnmodifiableListView) return _myRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myRequests);
  }

  final List<OrderModel> _stationRequests;
  @override
  @JsonKey()
  List<OrderModel> get stationRequests {
    if (_stationRequests is EqualUnmodifiableListView) return _stationRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stationRequests);
  }

  @override
  String toString() {
    return 'RequestsState.loaded(selectedOption: $selectedOption, myRequests: $myRequests, stationRequests: $stationRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption) &&
            const DeepCollectionEquality()
                .equals(other._myRequests, _myRequests) &&
            const DeepCollectionEquality()
                .equals(other._stationRequests, _stationRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedOption,
      const DeepCollectionEquality().hash(_myRequests),
      const DeepCollectionEquality().hash(_stationRequests));

  /// Create a copy of RequestsState
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
    required TResult Function(SegmentOption selectedOption) loading,
    required TResult Function(String message) error,
    required TResult Function(SegmentOption selectedOption,
            List<OrderModel> myRequests, List<OrderModel> stationRequests)
        loaded,
  }) {
    return loaded(selectedOption, myRequests, stationRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? loading,
    TResult? Function(String message)? error,
    TResult? Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
  }) {
    return loaded?.call(selectedOption, myRequests, stationRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? loading,
    TResult Function(String message)? error,
    TResult Function(SegmentOption selectedOption, List<OrderModel> myRequests,
            List<OrderModel> stationRequests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedOption, myRequests, stationRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
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
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements RequestsState {
  const factory LoadedState(
      {final SegmentOption selectedOption,
      final List<OrderModel> myRequests,
      final List<OrderModel> stationRequests}) = _$LoadedStateImpl;

  SegmentOption get selectedOption;
  List<OrderModel> get myRequests;
  List<OrderModel> get stationRequests;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
