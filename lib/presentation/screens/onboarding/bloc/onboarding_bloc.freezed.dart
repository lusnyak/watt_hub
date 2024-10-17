// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOnboarding,
    required TResult Function() nextOnboarding,
    required TResult Function(int pageIndex) onboardingPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOnboarding,
    TResult? Function()? nextOnboarding,
    TResult? Function(int pageIndex)? onboardingPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOnboarding,
    TResult Function()? nextOnboarding,
    TResult Function(int pageIndex)? onboardingPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOnboardingEvent value) loadOnboarding,
    required TResult Function(NextOnboardingEvent value) nextOnboarding,
    required TResult Function(OnboardingPageChangedEvent value)
        onboardingPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult? Function(NextOnboardingEvent value)? nextOnboarding,
    TResult? Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult Function(NextOnboardingEvent value)? nextOnboarding,
    TResult Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadOnboardingEventImplCopyWith<$Res> {
  factory _$$LoadOnboardingEventImplCopyWith(_$LoadOnboardingEventImpl value,
          $Res Function(_$LoadOnboardingEventImpl) then) =
      __$$LoadOnboardingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOnboardingEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$LoadOnboardingEventImpl>
    implements _$$LoadOnboardingEventImplCopyWith<$Res> {
  __$$LoadOnboardingEventImplCopyWithImpl(_$LoadOnboardingEventImpl _value,
      $Res Function(_$LoadOnboardingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadOnboardingEventImpl implements LoadOnboardingEvent {
  const _$LoadOnboardingEventImpl();

  @override
  String toString() {
    return 'OnboardingEvent.loadOnboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOnboardingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOnboarding,
    required TResult Function() nextOnboarding,
    required TResult Function(int pageIndex) onboardingPageChanged,
  }) {
    return loadOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOnboarding,
    TResult? Function()? nextOnboarding,
    TResult? Function(int pageIndex)? onboardingPageChanged,
  }) {
    return loadOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOnboarding,
    TResult Function()? nextOnboarding,
    TResult Function(int pageIndex)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (loadOnboarding != null) {
      return loadOnboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOnboardingEvent value) loadOnboarding,
    required TResult Function(NextOnboardingEvent value) nextOnboarding,
    required TResult Function(OnboardingPageChangedEvent value)
        onboardingPageChanged,
  }) {
    return loadOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult? Function(NextOnboardingEvent value)? nextOnboarding,
    TResult? Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
  }) {
    return loadOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult Function(NextOnboardingEvent value)? nextOnboarding,
    TResult Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (loadOnboarding != null) {
      return loadOnboarding(this);
    }
    return orElse();
  }
}

abstract class LoadOnboardingEvent implements OnboardingEvent {
  const factory LoadOnboardingEvent() = _$LoadOnboardingEventImpl;
}

/// @nodoc
abstract class _$$NextOnboardingEventImplCopyWith<$Res> {
  factory _$$NextOnboardingEventImplCopyWith(_$NextOnboardingEventImpl value,
          $Res Function(_$NextOnboardingEventImpl) then) =
      __$$NextOnboardingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextOnboardingEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$NextOnboardingEventImpl>
    implements _$$NextOnboardingEventImplCopyWith<$Res> {
  __$$NextOnboardingEventImplCopyWithImpl(_$NextOnboardingEventImpl _value,
      $Res Function(_$NextOnboardingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextOnboardingEventImpl implements NextOnboardingEvent {
  const _$NextOnboardingEventImpl();

  @override
  String toString() {
    return 'OnboardingEvent.nextOnboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextOnboardingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOnboarding,
    required TResult Function() nextOnboarding,
    required TResult Function(int pageIndex) onboardingPageChanged,
  }) {
    return nextOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOnboarding,
    TResult? Function()? nextOnboarding,
    TResult? Function(int pageIndex)? onboardingPageChanged,
  }) {
    return nextOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOnboarding,
    TResult Function()? nextOnboarding,
    TResult Function(int pageIndex)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (nextOnboarding != null) {
      return nextOnboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOnboardingEvent value) loadOnboarding,
    required TResult Function(NextOnboardingEvent value) nextOnboarding,
    required TResult Function(OnboardingPageChangedEvent value)
        onboardingPageChanged,
  }) {
    return nextOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult? Function(NextOnboardingEvent value)? nextOnboarding,
    TResult? Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
  }) {
    return nextOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult Function(NextOnboardingEvent value)? nextOnboarding,
    TResult Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (nextOnboarding != null) {
      return nextOnboarding(this);
    }
    return orElse();
  }
}

abstract class NextOnboardingEvent implements OnboardingEvent {
  const factory NextOnboardingEvent() = _$NextOnboardingEventImpl;
}

/// @nodoc
abstract class _$$OnboardingPageChangedEventImplCopyWith<$Res> {
  factory _$$OnboardingPageChangedEventImplCopyWith(
          _$OnboardingPageChangedEventImpl value,
          $Res Function(_$OnboardingPageChangedEventImpl) then) =
      __$$OnboardingPageChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$OnboardingPageChangedEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res,
        _$OnboardingPageChangedEventImpl>
    implements _$$OnboardingPageChangedEventImplCopyWith<$Res> {
  __$$OnboardingPageChangedEventImplCopyWithImpl(
      _$OnboardingPageChangedEventImpl _value,
      $Res Function(_$OnboardingPageChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$OnboardingPageChangedEventImpl(
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnboardingPageChangedEventImpl implements OnboardingPageChangedEvent {
  const _$OnboardingPageChangedEventImpl(this.pageIndex);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'OnboardingEvent.onboardingPageChanged(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPageChangedEventImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPageChangedEventImplCopyWith<_$OnboardingPageChangedEventImpl>
      get copyWith => __$$OnboardingPageChangedEventImplCopyWithImpl<
          _$OnboardingPageChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOnboarding,
    required TResult Function() nextOnboarding,
    required TResult Function(int pageIndex) onboardingPageChanged,
  }) {
    return onboardingPageChanged(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOnboarding,
    TResult? Function()? nextOnboarding,
    TResult? Function(int pageIndex)? onboardingPageChanged,
  }) {
    return onboardingPageChanged?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOnboarding,
    TResult Function()? nextOnboarding,
    TResult Function(int pageIndex)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (onboardingPageChanged != null) {
      return onboardingPageChanged(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOnboardingEvent value) loadOnboarding,
    required TResult Function(NextOnboardingEvent value) nextOnboarding,
    required TResult Function(OnboardingPageChangedEvent value)
        onboardingPageChanged,
  }) {
    return onboardingPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult? Function(NextOnboardingEvent value)? nextOnboarding,
    TResult? Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
  }) {
    return onboardingPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOnboardingEvent value)? loadOnboarding,
    TResult Function(NextOnboardingEvent value)? nextOnboarding,
    TResult Function(OnboardingPageChangedEvent value)? onboardingPageChanged,
    required TResult orElse(),
  }) {
    if (onboardingPageChanged != null) {
      return onboardingPageChanged(this);
    }
    return orElse();
  }
}

abstract class OnboardingPageChangedEvent implements OnboardingEvent {
  const factory OnboardingPageChangedEvent(final int pageIndex) =
      _$OnboardingPageChangedEventImpl;

  int get pageIndex;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingPageChangedEventImplCopyWith<_$OnboardingPageChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OnboardingModel> onboardingData) loaded,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OnboardingModel> onboardingData)? loaded,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OnboardingModel> onboardingData)? loaded,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnboardingInitialState value) initial,
    required TResult Function(_OnboardingLoadedState value) loaded,
    required TResult Function(_OnboardingCompleteState value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingInitialState value)? initial,
    TResult? Function(_OnboardingLoadedState value)? loaded,
    TResult? Function(_OnboardingCompleteState value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingInitialState value)? initial,
    TResult Function(_OnboardingLoadedState value)? loaded,
    TResult Function(_OnboardingCompleteState value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnboardingInitialStateImplCopyWith<$Res> {
  factory _$$OnboardingInitialStateImplCopyWith(
          _$OnboardingInitialStateImpl value,
          $Res Function(_$OnboardingInitialStateImpl) then) =
      __$$OnboardingInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingInitialStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingInitialStateImpl>
    implements _$$OnboardingInitialStateImplCopyWith<$Res> {
  __$$OnboardingInitialStateImplCopyWithImpl(
      _$OnboardingInitialStateImpl _value,
      $Res Function(_$OnboardingInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnboardingInitialStateImpl implements _OnboardingInitialState {
  const _$OnboardingInitialStateImpl();

  @override
  String toString() {
    return 'OnboardingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OnboardingModel> onboardingData) loaded,
    required TResult Function() complete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OnboardingModel> onboardingData)? loaded,
    TResult? Function()? complete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OnboardingModel> onboardingData)? loaded,
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
    required TResult Function(_OnboardingInitialState value) initial,
    required TResult Function(_OnboardingLoadedState value) loaded,
    required TResult Function(_OnboardingCompleteState value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingInitialState value)? initial,
    TResult? Function(_OnboardingLoadedState value)? loaded,
    TResult? Function(_OnboardingCompleteState value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingInitialState value)? initial,
    TResult Function(_OnboardingLoadedState value)? loaded,
    TResult Function(_OnboardingCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OnboardingInitialState implements OnboardingState {
  const factory _OnboardingInitialState() = _$OnboardingInitialStateImpl;
}

/// @nodoc
abstract class _$$OnboardingLoadedStateImplCopyWith<$Res> {
  factory _$$OnboardingLoadedStateImplCopyWith(
          _$OnboardingLoadedStateImpl value,
          $Res Function(_$OnboardingLoadedStateImpl) then) =
      __$$OnboardingLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OnboardingModel> onboardingData});
}

/// @nodoc
class __$$OnboardingLoadedStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingLoadedStateImpl>
    implements _$$OnboardingLoadedStateImplCopyWith<$Res> {
  __$$OnboardingLoadedStateImplCopyWithImpl(_$OnboardingLoadedStateImpl _value,
      $Res Function(_$OnboardingLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingData = null,
  }) {
    return _then(_$OnboardingLoadedStateImpl(
      null == onboardingData
          ? _value._onboardingData
          : onboardingData // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
    ));
  }
}

/// @nodoc

class _$OnboardingLoadedStateImpl implements _OnboardingLoadedState {
  const _$OnboardingLoadedStateImpl(final List<OnboardingModel> onboardingData)
      : _onboardingData = onboardingData;

  final List<OnboardingModel> _onboardingData;
  @override
  List<OnboardingModel> get onboardingData {
    if (_onboardingData is EqualUnmodifiableListView) return _onboardingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onboardingData);
  }

  @override
  String toString() {
    return 'OnboardingState.loaded(onboardingData: $onboardingData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._onboardingData, _onboardingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_onboardingData));

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingLoadedStateImplCopyWith<_$OnboardingLoadedStateImpl>
      get copyWith => __$$OnboardingLoadedStateImplCopyWithImpl<
          _$OnboardingLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OnboardingModel> onboardingData) loaded,
    required TResult Function() complete,
  }) {
    return loaded(onboardingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OnboardingModel> onboardingData)? loaded,
    TResult? Function()? complete,
  }) {
    return loaded?.call(onboardingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OnboardingModel> onboardingData)? loaded,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(onboardingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnboardingInitialState value) initial,
    required TResult Function(_OnboardingLoadedState value) loaded,
    required TResult Function(_OnboardingCompleteState value) complete,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingInitialState value)? initial,
    TResult? Function(_OnboardingLoadedState value)? loaded,
    TResult? Function(_OnboardingCompleteState value)? complete,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingInitialState value)? initial,
    TResult Function(_OnboardingLoadedState value)? loaded,
    TResult Function(_OnboardingCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _OnboardingLoadedState implements OnboardingState {
  const factory _OnboardingLoadedState(
      final List<OnboardingModel> onboardingData) = _$OnboardingLoadedStateImpl;

  List<OnboardingModel> get onboardingData;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingLoadedStateImplCopyWith<_$OnboardingLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingCompleteStateImplCopyWith<$Res> {
  factory _$$OnboardingCompleteStateImplCopyWith(
          _$OnboardingCompleteStateImpl value,
          $Res Function(_$OnboardingCompleteStateImpl) then) =
      __$$OnboardingCompleteStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCompleteStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingCompleteStateImpl>
    implements _$$OnboardingCompleteStateImplCopyWith<$Res> {
  __$$OnboardingCompleteStateImplCopyWithImpl(
      _$OnboardingCompleteStateImpl _value,
      $Res Function(_$OnboardingCompleteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnboardingCompleteStateImpl implements _OnboardingCompleteState {
  const _$OnboardingCompleteStateImpl();

  @override
  String toString() {
    return 'OnboardingState.complete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingCompleteStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OnboardingModel> onboardingData) loaded,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OnboardingModel> onboardingData)? loaded,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OnboardingModel> onboardingData)? loaded,
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
    required TResult Function(_OnboardingInitialState value) initial,
    required TResult Function(_OnboardingLoadedState value) loaded,
    required TResult Function(_OnboardingCompleteState value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingInitialState value)? initial,
    TResult? Function(_OnboardingLoadedState value)? loaded,
    TResult? Function(_OnboardingCompleteState value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingInitialState value)? initial,
    TResult Function(_OnboardingLoadedState value)? loaded,
    TResult Function(_OnboardingCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _OnboardingCompleteState implements OnboardingState {
  const factory _OnboardingCompleteState() = _$OnboardingCompleteStateImpl;
}
