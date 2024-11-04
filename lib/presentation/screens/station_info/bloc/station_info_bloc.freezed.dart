// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StationInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCarouselIndex,
    required TResult Function() loadConnectors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCarouselIndex,
    TResult? Function()? loadConnectors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCarouselIndex,
    TResult Function()? loadConnectors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCarouselIndexEvent value)
        changeCarouselIndex,
    required TResult Function(_LoadConnectorsEvent value) loadConnectors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult? Function(_LoadConnectorsEvent value)? loadConnectors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult Function(_LoadConnectorsEvent value)? loadConnectors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationInfoEventCopyWith<$Res> {
  factory $StationInfoEventCopyWith(
          StationInfoEvent value, $Res Function(StationInfoEvent) then) =
      _$StationInfoEventCopyWithImpl<$Res, StationInfoEvent>;
}

/// @nodoc
class _$StationInfoEventCopyWithImpl<$Res, $Val extends StationInfoEvent>
    implements $StationInfoEventCopyWith<$Res> {
  _$StationInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeCarouselIndexEventImplCopyWith<$Res> {
  factory _$$ChangeCarouselIndexEventImplCopyWith(
          _$ChangeCarouselIndexEventImpl value,
          $Res Function(_$ChangeCarouselIndexEventImpl) then) =
      __$$ChangeCarouselIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCarouselIndexEventImplCopyWithImpl<$Res>
    extends _$StationInfoEventCopyWithImpl<$Res, _$ChangeCarouselIndexEventImpl>
    implements _$$ChangeCarouselIndexEventImplCopyWith<$Res> {
  __$$ChangeCarouselIndexEventImplCopyWithImpl(
      _$ChangeCarouselIndexEventImpl _value,
      $Res Function(_$ChangeCarouselIndexEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCarouselIndexEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCarouselIndexEventImpl implements _ChangeCarouselIndexEvent {
  const _$ChangeCarouselIndexEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'StationInfoEvent.changeCarouselIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCarouselIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of StationInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCarouselIndexEventImplCopyWith<_$ChangeCarouselIndexEventImpl>
      get copyWith => __$$ChangeCarouselIndexEventImplCopyWithImpl<
          _$ChangeCarouselIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCarouselIndex,
    required TResult Function() loadConnectors,
  }) {
    return changeCarouselIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCarouselIndex,
    TResult? Function()? loadConnectors,
  }) {
    return changeCarouselIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCarouselIndex,
    TResult Function()? loadConnectors,
    required TResult orElse(),
  }) {
    if (changeCarouselIndex != null) {
      return changeCarouselIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCarouselIndexEvent value)
        changeCarouselIndex,
    required TResult Function(_LoadConnectorsEvent value) loadConnectors,
  }) {
    return changeCarouselIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult? Function(_LoadConnectorsEvent value)? loadConnectors,
  }) {
    return changeCarouselIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult Function(_LoadConnectorsEvent value)? loadConnectors,
    required TResult orElse(),
  }) {
    if (changeCarouselIndex != null) {
      return changeCarouselIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeCarouselIndexEvent implements StationInfoEvent {
  const factory _ChangeCarouselIndexEvent(final int index) =
      _$ChangeCarouselIndexEventImpl;

  int get index;

  /// Create a copy of StationInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCarouselIndexEventImplCopyWith<_$ChangeCarouselIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadConnectorsEventImplCopyWith<$Res> {
  factory _$$LoadConnectorsEventImplCopyWith(_$LoadConnectorsEventImpl value,
          $Res Function(_$LoadConnectorsEventImpl) then) =
      __$$LoadConnectorsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadConnectorsEventImplCopyWithImpl<$Res>
    extends _$StationInfoEventCopyWithImpl<$Res, _$LoadConnectorsEventImpl>
    implements _$$LoadConnectorsEventImplCopyWith<$Res> {
  __$$LoadConnectorsEventImplCopyWithImpl(_$LoadConnectorsEventImpl _value,
      $Res Function(_$LoadConnectorsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadConnectorsEventImpl implements _LoadConnectorsEvent {
  const _$LoadConnectorsEventImpl();

  @override
  String toString() {
    return 'StationInfoEvent.loadConnectors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadConnectorsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCarouselIndex,
    required TResult Function() loadConnectors,
  }) {
    return loadConnectors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCarouselIndex,
    TResult? Function()? loadConnectors,
  }) {
    return loadConnectors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCarouselIndex,
    TResult Function()? loadConnectors,
    required TResult orElse(),
  }) {
    if (loadConnectors != null) {
      return loadConnectors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCarouselIndexEvent value)
        changeCarouselIndex,
    required TResult Function(_LoadConnectorsEvent value) loadConnectors,
  }) {
    return loadConnectors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult? Function(_LoadConnectorsEvent value)? loadConnectors,
  }) {
    return loadConnectors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCarouselIndexEvent value)? changeCarouselIndex,
    TResult Function(_LoadConnectorsEvent value)? loadConnectors,
    required TResult orElse(),
  }) {
    if (loadConnectors != null) {
      return loadConnectors(this);
    }
    return orElse();
  }
}

abstract class _LoadConnectorsEvent implements StationInfoEvent {
  const factory _LoadConnectorsEvent() = _$LoadConnectorsEventImpl;
}

/// @nodoc
mixin _$StationInfoState {
  int get activeCarouselIndex => throw _privateConstructorUsedError;
  List<ConnectorTypeModel> get connectors => throw _privateConstructorUsedError;

  /// Create a copy of StationInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationInfoStateCopyWith<StationInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationInfoStateCopyWith<$Res> {
  factory $StationInfoStateCopyWith(
          StationInfoState value, $Res Function(StationInfoState) then) =
      _$StationInfoStateCopyWithImpl<$Res, StationInfoState>;
  @useResult
  $Res call({int activeCarouselIndex, List<ConnectorTypeModel> connectors});
}

/// @nodoc
class _$StationInfoStateCopyWithImpl<$Res, $Val extends StationInfoState>
    implements $StationInfoStateCopyWith<$Res> {
  _$StationInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCarouselIndex = null,
    Object? connectors = null,
  }) {
    return _then(_value.copyWith(
      activeCarouselIndex: null == activeCarouselIndex
          ? _value.activeCarouselIndex
          : activeCarouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectors: null == connectors
          ? _value.connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationInfoStateImplCopyWith<$Res>
    implements $StationInfoStateCopyWith<$Res> {
  factory _$$StationInfoStateImplCopyWith(_$StationInfoStateImpl value,
          $Res Function(_$StationInfoStateImpl) then) =
      __$$StationInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int activeCarouselIndex, List<ConnectorTypeModel> connectors});
}

/// @nodoc
class __$$StationInfoStateImplCopyWithImpl<$Res>
    extends _$StationInfoStateCopyWithImpl<$Res, _$StationInfoStateImpl>
    implements _$$StationInfoStateImplCopyWith<$Res> {
  __$$StationInfoStateImplCopyWithImpl(_$StationInfoStateImpl _value,
      $Res Function(_$StationInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCarouselIndex = null,
    Object? connectors = null,
  }) {
    return _then(_$StationInfoStateImpl(
      activeCarouselIndex: null == activeCarouselIndex
          ? _value.activeCarouselIndex
          : activeCarouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectors: null == connectors
          ? _value._connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>,
    ));
  }
}

/// @nodoc

class _$StationInfoStateImpl implements _StationInfoState {
  const _$StationInfoStateImpl(
      {this.activeCarouselIndex = 0,
      final List<ConnectorTypeModel> connectors = const []})
      : _connectors = connectors;

  @override
  @JsonKey()
  final int activeCarouselIndex;
  final List<ConnectorTypeModel> _connectors;
  @override
  @JsonKey()
  List<ConnectorTypeModel> get connectors {
    if (_connectors is EqualUnmodifiableListView) return _connectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectors);
  }

  @override
  String toString() {
    return 'StationInfoState(activeCarouselIndex: $activeCarouselIndex, connectors: $connectors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationInfoStateImpl &&
            (identical(other.activeCarouselIndex, activeCarouselIndex) ||
                other.activeCarouselIndex == activeCarouselIndex) &&
            const DeepCollectionEquality()
                .equals(other._connectors, _connectors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCarouselIndex,
      const DeepCollectionEquality().hash(_connectors));

  /// Create a copy of StationInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationInfoStateImplCopyWith<_$StationInfoStateImpl> get copyWith =>
      __$$StationInfoStateImplCopyWithImpl<_$StationInfoStateImpl>(
          this, _$identity);
}

abstract class _StationInfoState implements StationInfoState {
  const factory _StationInfoState(
      {final int activeCarouselIndex,
      final List<ConnectorTypeModel> connectors}) = _$StationInfoStateImpl;

  @override
  int get activeCarouselIndex;
  @override
  List<ConnectorTypeModel> get connectors;

  /// Create a copy of StationInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationInfoStateImplCopyWith<_$StationInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
