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
    required TResult Function(SegmentOption selectedOption) selectRequestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SegmentOption selectedOption)? selectRequestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SegmentOption selectedOption)? selectRequestState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectRequestState value) selectRequestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectRequestState value)? selectRequestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectRequestState value)? selectRequestState,
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
abstract class _$$SelectRequestStateImplCopyWith<$Res>
    implements $RequestsEventCopyWith<$Res> {
  factory _$$SelectRequestStateImplCopyWith(_$SelectRequestStateImpl value,
          $Res Function(_$SelectRequestStateImpl) then) =
      __$$SelectRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SegmentOption selectedOption});
}

/// @nodoc
class __$$SelectRequestStateImplCopyWithImpl<$Res>
    extends _$RequestsEventCopyWithImpl<$Res, _$SelectRequestStateImpl>
    implements _$$SelectRequestStateImplCopyWith<$Res> {
  __$$SelectRequestStateImplCopyWithImpl(_$SelectRequestStateImpl _value,
      $Res Function(_$SelectRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$SelectRequestStateImpl(
      null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
    ));
  }
}

/// @nodoc

class _$SelectRequestStateImpl implements _SelectRequestState {
  const _$SelectRequestStateImpl(this.selectedOption);

  @override
  final SegmentOption selectedOption;

  @override
  String toString() {
    return 'RequestsEvent.selectRequestState(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRequestStateImpl &&
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
  _$$SelectRequestStateImplCopyWith<_$SelectRequestStateImpl> get copyWith =>
      __$$SelectRequestStateImplCopyWithImpl<_$SelectRequestStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SegmentOption selectedOption) selectRequestState,
  }) {
    return selectRequestState(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SegmentOption selectedOption)? selectRequestState,
  }) {
    return selectRequestState?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SegmentOption selectedOption)? selectRequestState,
    required TResult orElse(),
  }) {
    if (selectRequestState != null) {
      return selectRequestState(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectRequestState value) selectRequestState,
  }) {
    return selectRequestState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectRequestState value)? selectRequestState,
  }) {
    return selectRequestState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectRequestState value)? selectRequestState,
    required TResult orElse(),
  }) {
    if (selectRequestState != null) {
      return selectRequestState(this);
    }
    return orElse();
  }
}

abstract class _SelectRequestState implements RequestsEvent {
  const factory _SelectRequestState(final SegmentOption selectedOption) =
      _$SelectRequestStateImpl;

  @override
  SegmentOption get selectedOption;

  /// Create a copy of RequestsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRequestStateImplCopyWith<_$SelectRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SegmentOption selectedOption) selectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? selectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? selectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestsState value) selectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestsState value)? selectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestsState value)? selectedState,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RequestsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SegmentOption selectedOption) selectedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? selectedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? selectedState,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestsState value) selectedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestsState value)? selectedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestsState value)? selectedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestsStateImplCopyWith<$Res> {
  factory _$$RequestsStateImplCopyWith(
          _$RequestsStateImpl value, $Res Function(_$RequestsStateImpl) then) =
      __$$RequestsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SegmentOption selectedOption});
}

/// @nodoc
class __$$RequestsStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsStateImpl>
    implements _$$RequestsStateImplCopyWith<$Res> {
  __$$RequestsStateImplCopyWithImpl(
      _$RequestsStateImpl _value, $Res Function(_$RequestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$RequestsStateImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SegmentOption,
    ));
  }
}

/// @nodoc

class _$RequestsStateImpl implements _RequestsState {
  const _$RequestsStateImpl({required this.selectedOption});

  @override
  final SegmentOption selectedOption;

  @override
  String toString() {
    return 'RequestsState.selectedState(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsStateImpl &&
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
  _$$RequestsStateImplCopyWith<_$RequestsStateImpl> get copyWith =>
      __$$RequestsStateImplCopyWithImpl<_$RequestsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SegmentOption selectedOption) selectedState,
  }) {
    return selectedState(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SegmentOption selectedOption)? selectedState,
  }) {
    return selectedState?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SegmentOption selectedOption)? selectedState,
    required TResult orElse(),
  }) {
    if (selectedState != null) {
      return selectedState(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestsState value) selectedState,
  }) {
    return selectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestsState value)? selectedState,
  }) {
    return selectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestsState value)? selectedState,
    required TResult orElse(),
  }) {
    if (selectedState != null) {
      return selectedState(this);
    }
    return orElse();
  }
}

abstract class _RequestsState implements RequestsState {
  const factory _RequestsState({required final SegmentOption selectedOption}) =
      _$RequestsStateImpl;

  SegmentOption get selectedOption;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsStateImplCopyWith<_$RequestsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
