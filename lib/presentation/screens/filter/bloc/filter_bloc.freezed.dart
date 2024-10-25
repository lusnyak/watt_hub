// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedEventImplCopyWith<$Res> {
  factory _$$StartedEventImplCopyWith(
          _$StartedEventImpl value, $Res Function(_$StartedEventImpl) then) =
      __$$StartedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$StartedEventImpl>
    implements _$$StartedEventImplCopyWith<$Res> {
  __$$StartedEventImplCopyWithImpl(
      _$StartedEventImpl _value, $Res Function(_$StartedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString() {
    return 'FilterEvent.startedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) {
    return startedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) {
    return startedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (startedEvent != null) {
      return startedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) {
    return startedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) {
    return startedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (startedEvent != null) {
      return startedEvent(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements FilterEvent {
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc
abstract class _$$SliderValueChangedEventImplCopyWith<$Res> {
  factory _$$SliderValueChangedEventImplCopyWith(
          _$SliderValueChangedEventImpl value,
          $Res Function(_$SliderValueChangedEventImpl) then) =
      __$$SliderValueChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double newValue});
}

/// @nodoc
class __$$SliderValueChangedEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SliderValueChangedEventImpl>
    implements _$$SliderValueChangedEventImplCopyWith<$Res> {
  __$$SliderValueChangedEventImplCopyWithImpl(
      _$SliderValueChangedEventImpl _value,
      $Res Function(_$SliderValueChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$SliderValueChangedEventImpl(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SliderValueChangedEventImpl implements _SliderValueChangedEvent {
  const _$SliderValueChangedEventImpl(this.newValue);

  @override
  final double newValue;

  @override
  String toString() {
    return 'FilterEvent.sliderValueChangedEvent(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderValueChangedEventImpl &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderValueChangedEventImplCopyWith<_$SliderValueChangedEventImpl>
      get copyWith => __$$SliderValueChangedEventImplCopyWithImpl<
          _$SliderValueChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) {
    return sliderValueChangedEvent(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) {
    return sliderValueChangedEvent?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (sliderValueChangedEvent != null) {
      return sliderValueChangedEvent(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) {
    return sliderValueChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) {
    return sliderValueChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (sliderValueChangedEvent != null) {
      return sliderValueChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _SliderValueChangedEvent implements FilterEvent {
  const factory _SliderValueChangedEvent(final double newValue) =
      _$SliderValueChangedEventImpl;

  double get newValue;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderValueChangedEventImplCopyWith<_$SliderValueChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarTypeChangedEventImplCopyWith<$Res> {
  factory _$$CarTypeChangedEventImplCopyWith(_$CarTypeChangedEventImpl value,
          $Res Function(_$CarTypeChangedEventImpl) then) =
      __$$CarTypeChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CarTypeModel? selectedCar});

  $CarTypeModelCopyWith<$Res>? get selectedCar;
}

/// @nodoc
class __$$CarTypeChangedEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$CarTypeChangedEventImpl>
    implements _$$CarTypeChangedEventImplCopyWith<$Res> {
  __$$CarTypeChangedEventImplCopyWithImpl(_$CarTypeChangedEventImpl _value,
      $Res Function(_$CarTypeChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCar = freezed,
  }) {
    return _then(_$CarTypeChangedEventImpl(
      freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
    ));
  }

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res>? get selectedCar {
    if (_value.selectedCar == null) {
      return null;
    }

    return $CarTypeModelCopyWith<$Res>(_value.selectedCar!, (value) {
      return _then(_value.copyWith(selectedCar: value));
    });
  }
}

/// @nodoc

class _$CarTypeChangedEventImpl implements _CarTypeChangedEvent {
  const _$CarTypeChangedEventImpl(this.selectedCar);

  @override
  final CarTypeModel? selectedCar;

  @override
  String toString() {
    return 'FilterEvent.carTypeChangedEvent(selectedCar: $selectedCar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypeChangedEventImpl &&
            (identical(other.selectedCar, selectedCar) ||
                other.selectedCar == selectedCar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCar);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTypeChangedEventImplCopyWith<_$CarTypeChangedEventImpl> get copyWith =>
      __$$CarTypeChangedEventImplCopyWithImpl<_$CarTypeChangedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) {
    return carTypeChangedEvent(selectedCar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) {
    return carTypeChangedEvent?.call(selectedCar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (carTypeChangedEvent != null) {
      return carTypeChangedEvent(selectedCar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) {
    return carTypeChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) {
    return carTypeChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (carTypeChangedEvent != null) {
      return carTypeChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _CarTypeChangedEvent implements FilterEvent {
  const factory _CarTypeChangedEvent(final CarTypeModel? selectedCar) =
      _$CarTypeChangedEventImpl;

  CarTypeModel? get selectedCar;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarTypeChangedEventImplCopyWith<_$CarTypeChangedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectorTypeChangedEventImplCopyWith<$Res> {
  factory _$$ConnectorTypeChangedEventImplCopyWith(
          _$ConnectorTypeChangedEventImpl value,
          $Res Function(_$ConnectorTypeChangedEventImpl) then) =
      __$$ConnectorTypeChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorTypeModel? selectedConnector});

  $ConnectorTypeModelCopyWith<$Res>? get selectedConnector;
}

/// @nodoc
class __$$ConnectorTypeChangedEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ConnectorTypeChangedEventImpl>
    implements _$$ConnectorTypeChangedEventImplCopyWith<$Res> {
  __$$ConnectorTypeChangedEventImplCopyWithImpl(
      _$ConnectorTypeChangedEventImpl _value,
      $Res Function(_$ConnectorTypeChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedConnector = freezed,
  }) {
    return _then(_$ConnectorTypeChangedEventImpl(
      freezed == selectedConnector
          ? _value.selectedConnector
          : selectedConnector // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
    ));
  }

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res>? get selectedConnector {
    if (_value.selectedConnector == null) {
      return null;
    }

    return $ConnectorTypeModelCopyWith<$Res>(_value.selectedConnector!,
        (value) {
      return _then(_value.copyWith(selectedConnector: value));
    });
  }
}

/// @nodoc

class _$ConnectorTypeChangedEventImpl implements _ConnectorTypeChangedEvent {
  const _$ConnectorTypeChangedEventImpl(this.selectedConnector);

  @override
  final ConnectorTypeModel? selectedConnector;

  @override
  String toString() {
    return 'FilterEvent.connectorTypeChangedEvent(selectedConnector: $selectedConnector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorTypeChangedEventImpl &&
            (identical(other.selectedConnector, selectedConnector) ||
                other.selectedConnector == selectedConnector));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedConnector);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectorTypeChangedEventImplCopyWith<_$ConnectorTypeChangedEventImpl>
      get copyWith => __$$ConnectorTypeChangedEventImplCopyWithImpl<
          _$ConnectorTypeChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) {
    return connectorTypeChangedEvent(selectedConnector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) {
    return connectorTypeChangedEvent?.call(selectedConnector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (connectorTypeChangedEvent != null) {
      return connectorTypeChangedEvent(selectedConnector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) {
    return connectorTypeChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) {
    return connectorTypeChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (connectorTypeChangedEvent != null) {
      return connectorTypeChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _ConnectorTypeChangedEvent implements FilterEvent {
  const factory _ConnectorTypeChangedEvent(
          final ConnectorTypeModel? selectedConnector) =
      _$ConnectorTypeChangedEventImpl;

  ConnectorTypeModel? get selectedConnector;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectorTypeChangedEventImplCopyWith<_$ConnectorTypeChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyFiltersEventImplCopyWith<$Res> {
  factory _$$ApplyFiltersEventImplCopyWith(_$ApplyFiltersEventImpl value,
          $Res Function(_$ApplyFiltersEventImpl) then) =
      __$$ApplyFiltersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplyFiltersEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ApplyFiltersEventImpl>
    implements _$$ApplyFiltersEventImplCopyWith<$Res> {
  __$$ApplyFiltersEventImplCopyWithImpl(_$ApplyFiltersEventImpl _value,
      $Res Function(_$ApplyFiltersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApplyFiltersEventImpl implements _ApplyFiltersEvent {
  const _$ApplyFiltersEventImpl();

  @override
  String toString() {
    return 'FilterEvent.applyFiltersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplyFiltersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(double newValue) sliderValueChangedEvent,
    required TResult Function(CarTypeModel? selectedCar) carTypeChangedEvent,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChangedEvent,
    required TResult Function() applyFiltersEvent,
  }) {
    return applyFiltersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(double newValue)? sliderValueChangedEvent,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult? Function()? applyFiltersEvent,
  }) {
    return applyFiltersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(double newValue)? sliderValueChangedEvent,
    TResult Function(CarTypeModel? selectedCar)? carTypeChangedEvent,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChangedEvent,
    TResult Function()? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (applyFiltersEvent != null) {
      return applyFiltersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(_SliderValueChangedEvent value)
        sliderValueChangedEvent,
    required TResult Function(_CarTypeChangedEvent value) carTypeChangedEvent,
    required TResult Function(_ConnectorTypeChangedEvent value)
        connectorTypeChangedEvent,
    required TResult Function(_ApplyFiltersEvent value) applyFiltersEvent,
  }) {
    return applyFiltersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult? Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult? Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult? Function(_ApplyFiltersEvent value)? applyFiltersEvent,
  }) {
    return applyFiltersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(_SliderValueChangedEvent value)? sliderValueChangedEvent,
    TResult Function(_CarTypeChangedEvent value)? carTypeChangedEvent,
    TResult Function(_ConnectorTypeChangedEvent value)?
        connectorTypeChangedEvent,
    TResult Function(_ApplyFiltersEvent value)? applyFiltersEvent,
    required TResult orElse(),
  }) {
    if (applyFiltersEvent != null) {
      return applyFiltersEvent(this);
    }
    return orElse();
  }
}

abstract class _ApplyFiltersEvent implements FilterEvent {
  const factory _ApplyFiltersEvent() = _$ApplyFiltersEventImpl;
}

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterState
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
    extends _$FilterStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'FilterState.initial()';
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
    required TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)
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
    TResult? Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements FilterState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'FilterState.loading()';
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
    required TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)
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
    TResult? Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements FilterState {
  const factory _LoadingState() = _$LoadingStateImpl;
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
    extends _$FilterStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
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

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FilterState.error(message: $message)';
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

  /// Create a copy of FilterState
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
    required TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)
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
    TResult? Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements FilterState {
  const factory _ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of FilterState
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
      {List<ConnectorTypeModel> connectors,
      List<CarTypeModel> cars,
      int? initialSelectedCarId,
      int? initialSelectedConnectorId,
      double? initialRating});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectors = null,
    Object? cars = null,
    Object? initialSelectedCarId = freezed,
    Object? initialSelectedConnectorId = freezed,
    Object? initialRating = freezed,
  }) {
    return _then(_$LoadedStateImpl(
      null == connectors
          ? _value._connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>,
      null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarTypeModel>,
      initialSelectedCarId: freezed == initialSelectedCarId
          ? _value.initialSelectedCarId
          : initialSelectedCarId // ignore: cast_nullable_to_non_nullable
              as int?,
      initialSelectedConnectorId: freezed == initialSelectedConnectorId
          ? _value.initialSelectedConnectorId
          : initialSelectedConnectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      initialRating: freezed == initialRating
          ? _value.initialRating
          : initialRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(
      final List<ConnectorTypeModel> connectors, final List<CarTypeModel> cars,
      {this.initialSelectedCarId,
      this.initialSelectedConnectorId,
      this.initialRating})
      : _connectors = connectors,
        _cars = cars;

  final List<ConnectorTypeModel> _connectors;
  @override
  List<ConnectorTypeModel> get connectors {
    if (_connectors is EqualUnmodifiableListView) return _connectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectors);
  }

  final List<CarTypeModel> _cars;
  @override
  List<CarTypeModel> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final int? initialSelectedCarId;
  @override
  final int? initialSelectedConnectorId;
  @override
  final double? initialRating;

  @override
  String toString() {
    return 'FilterState.loaded(connectors: $connectors, cars: $cars, initialSelectedCarId: $initialSelectedCarId, initialSelectedConnectorId: $initialSelectedConnectorId, initialRating: $initialRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._connectors, _connectors) &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.initialSelectedCarId, initialSelectedCarId) ||
                other.initialSelectedCarId == initialSelectedCarId) &&
            (identical(other.initialSelectedConnectorId,
                    initialSelectedConnectorId) ||
                other.initialSelectedConnectorId ==
                    initialSelectedConnectorId) &&
            (identical(other.initialRating, initialRating) ||
                other.initialRating == initialRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectors),
      const DeepCollectionEquality().hash(_cars),
      initialSelectedCarId,
      initialSelectedConnectorId,
      initialRating);

  /// Create a copy of FilterState
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
    required TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)
        loaded,
  }) {
    return loaded(connectors, cars, initialSelectedCarId,
        initialSelectedConnectorId, initialRating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
        loaded,
  }) {
    return loaded?.call(connectors, cars, initialSelectedCarId,
        initialSelectedConnectorId, initialRating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ConnectorTypeModel> connectors,
            List<CarTypeModel> cars,
            int? initialSelectedCarId,
            int? initialSelectedConnectorId,
            double? initialRating)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(connectors, cars, initialSelectedCarId,
          initialSelectedConnectorId, initialRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements FilterState {
  const factory _LoadedState(
      final List<ConnectorTypeModel> connectors, final List<CarTypeModel> cars,
      {final int? initialSelectedCarId,
      final int? initialSelectedConnectorId,
      final double? initialRating}) = _$LoadedStateImpl;

  List<ConnectorTypeModel> get connectors;
  List<CarTypeModel> get cars;
  int? get initialSelectedCarId;
  int? get initialSelectedConnectorId;
  double? get initialRating;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
