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
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FilterEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FilterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SliderValueChangedImplCopyWith<$Res> {
  factory _$$SliderValueChangedImplCopyWith(_$SliderValueChangedImpl value,
          $Res Function(_$SliderValueChangedImpl) then) =
      __$$SliderValueChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double newValue});
}

/// @nodoc
class __$$SliderValueChangedImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SliderValueChangedImpl>
    implements _$$SliderValueChangedImplCopyWith<$Res> {
  __$$SliderValueChangedImplCopyWithImpl(_$SliderValueChangedImpl _value,
      $Res Function(_$SliderValueChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$SliderValueChangedImpl(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SliderValueChangedImpl implements _SliderValueChanged {
  const _$SliderValueChangedImpl(this.newValue);

  @override
  final double newValue;

  @override
  String toString() {
    return 'FilterEvent.sliderValueChanged(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderValueChangedImpl &&
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
  _$$SliderValueChangedImplCopyWith<_$SliderValueChangedImpl> get copyWith =>
      __$$SliderValueChangedImplCopyWithImpl<_$SliderValueChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) {
    return sliderValueChanged(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) {
    return sliderValueChanged?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) {
    if (sliderValueChanged != null) {
      return sliderValueChanged(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return sliderValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return sliderValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (sliderValueChanged != null) {
      return sliderValueChanged(this);
    }
    return orElse();
  }
}

abstract class _SliderValueChanged implements FilterEvent {
  const factory _SliderValueChanged(final double newValue) =
      _$SliderValueChangedImpl;

  double get newValue;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderValueChangedImplCopyWith<_$SliderValueChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarTypeChangedImplCopyWith<$Res> {
  factory _$$CarTypeChangedImplCopyWith(_$CarTypeChangedImpl value,
          $Res Function(_$CarTypeChangedImpl) then) =
      __$$CarTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CarTypeModel? selectedCar});

  $CarTypeModelCopyWith<$Res>? get selectedCar;
}

/// @nodoc
class __$$CarTypeChangedImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$CarTypeChangedImpl>
    implements _$$CarTypeChangedImplCopyWith<$Res> {
  __$$CarTypeChangedImplCopyWithImpl(
      _$CarTypeChangedImpl _value, $Res Function(_$CarTypeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCar = freezed,
  }) {
    return _then(_$CarTypeChangedImpl(
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

class _$CarTypeChangedImpl implements _CarTypeChanged {
  const _$CarTypeChangedImpl(this.selectedCar);

  @override
  final CarTypeModel? selectedCar;

  @override
  String toString() {
    return 'FilterEvent.carTypeChanged(selectedCar: $selectedCar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypeChangedImpl &&
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
  _$$CarTypeChangedImplCopyWith<_$CarTypeChangedImpl> get copyWith =>
      __$$CarTypeChangedImplCopyWithImpl<_$CarTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) {
    return carTypeChanged(selectedCar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) {
    return carTypeChanged?.call(selectedCar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) {
    if (carTypeChanged != null) {
      return carTypeChanged(selectedCar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return carTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return carTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (carTypeChanged != null) {
      return carTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _CarTypeChanged implements FilterEvent {
  const factory _CarTypeChanged(final CarTypeModel? selectedCar) =
      _$CarTypeChangedImpl;

  CarTypeModel? get selectedCar;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarTypeChangedImplCopyWith<_$CarTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectorTypeChangedImplCopyWith<$Res> {
  factory _$$ConnectorTypeChangedImplCopyWith(_$ConnectorTypeChangedImpl value,
          $Res Function(_$ConnectorTypeChangedImpl) then) =
      __$$ConnectorTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorTypeModel? selectedConnector});

  $ConnectorTypeModelCopyWith<$Res>? get selectedConnector;
}

/// @nodoc
class __$$ConnectorTypeChangedImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ConnectorTypeChangedImpl>
    implements _$$ConnectorTypeChangedImplCopyWith<$Res> {
  __$$ConnectorTypeChangedImplCopyWithImpl(_$ConnectorTypeChangedImpl _value,
      $Res Function(_$ConnectorTypeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedConnector = freezed,
  }) {
    return _then(_$ConnectorTypeChangedImpl(
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

class _$ConnectorTypeChangedImpl implements _ConnectorTypeChanged {
  const _$ConnectorTypeChangedImpl(this.selectedConnector);

  @override
  final ConnectorTypeModel? selectedConnector;

  @override
  String toString() {
    return 'FilterEvent.connectorTypeChanged(selectedConnector: $selectedConnector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorTypeChangedImpl &&
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
  _$$ConnectorTypeChangedImplCopyWith<_$ConnectorTypeChangedImpl>
      get copyWith =>
          __$$ConnectorTypeChangedImplCopyWithImpl<_$ConnectorTypeChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) {
    return connectorTypeChanged(selectedConnector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) {
    return connectorTypeChanged?.call(selectedConnector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) {
    if (connectorTypeChanged != null) {
      return connectorTypeChanged(selectedConnector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return connectorTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return connectorTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (connectorTypeChanged != null) {
      return connectorTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectorTypeChanged implements FilterEvent {
  const factory _ConnectorTypeChanged(
      final ConnectorTypeModel? selectedConnector) = _$ConnectorTypeChangedImpl;

  ConnectorTypeModel? get selectedConnector;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectorTypeChangedImplCopyWith<_$ConnectorTypeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyFiltersImplCopyWith<$Res> {
  factory _$$ApplyFiltersImplCopyWith(
          _$ApplyFiltersImpl value, $Res Function(_$ApplyFiltersImpl) then) =
      __$$ApplyFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplyFiltersImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ApplyFiltersImpl>
    implements _$$ApplyFiltersImplCopyWith<$Res> {
  __$$ApplyFiltersImplCopyWithImpl(
      _$ApplyFiltersImpl _value, $Res Function(_$ApplyFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApplyFiltersImpl implements _ApplyFilters {
  const _$ApplyFiltersImpl();

  @override
  String toString() {
    return 'FilterEvent.applyFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplyFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double newValue) sliderValueChanged,
    required TResult Function(CarTypeModel? selectedCar) carTypeChanged,
    required TResult Function(ConnectorTypeModel? selectedConnector)
        connectorTypeChanged,
    required TResult Function() applyFilters,
  }) {
    return applyFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double newValue)? sliderValueChanged,
    TResult? Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult? Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult? Function()? applyFilters,
  }) {
    return applyFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double newValue)? sliderValueChanged,
    TResult Function(CarTypeModel? selectedCar)? carTypeChanged,
    TResult Function(ConnectorTypeModel? selectedConnector)?
        connectorTypeChanged,
    TResult Function()? applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SliderValueChanged value) sliderValueChanged,
    required TResult Function(_CarTypeChanged value) carTypeChanged,
    required TResult Function(_ConnectorTypeChanged value) connectorTypeChanged,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return applyFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SliderValueChanged value)? sliderValueChanged,
    TResult? Function(_CarTypeChanged value)? carTypeChanged,
    TResult? Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return applyFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SliderValueChanged value)? sliderValueChanged,
    TResult Function(_CarTypeChanged value)? carTypeChanged,
    TResult Function(_ConnectorTypeChanged value)? connectorTypeChanged,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilters implements FilterEvent {
  const factory _ApplyFilters() = _$ApplyFiltersImpl;
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
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
      double? currentSliderValue,
      CarTypeModel? selectedCar,
      ConnectorTypeModel? selectedConnector});

  $CarTypeModelCopyWith<$Res>? get selectedCar;
  $ConnectorTypeModelCopyWith<$Res>? get selectedConnector;
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
    Object? currentSliderValue = freezed,
    Object? selectedCar = freezed,
    Object? selectedConnector = freezed,
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
      currentSliderValue: freezed == currentSliderValue
          ? _value.currentSliderValue
          : currentSliderValue // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedCar: freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
      selectedConnector: freezed == selectedConnector
          ? _value.selectedConnector
          : selectedConnector // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
    ));
  }

  /// Create a copy of FilterState
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

  /// Create a copy of FilterState
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

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(
      final List<ConnectorTypeModel> connectors, final List<CarTypeModel> cars,
      {this.currentSliderValue, this.selectedCar, this.selectedConnector})
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
  final double? currentSliderValue;
  @override
  final CarTypeModel? selectedCar;
  @override
  final ConnectorTypeModel? selectedConnector;

  @override
  String toString() {
    return 'FilterState.loaded(connectors: $connectors, cars: $cars, currentSliderValue: $currentSliderValue, selectedCar: $selectedCar, selectedConnector: $selectedConnector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._connectors, _connectors) &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.currentSliderValue, currentSliderValue) ||
                other.currentSliderValue == currentSliderValue) &&
            (identical(other.selectedCar, selectedCar) ||
                other.selectedCar == selectedCar) &&
            (identical(other.selectedConnector, selectedConnector) ||
                other.selectedConnector == selectedConnector));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectors),
      const DeepCollectionEquality().hash(_cars),
      currentSliderValue,
      selectedCar,
      selectedConnector);

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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)
        loaded,
  }) {
    return loaded(
        connectors, cars, currentSliderValue, selectedCar, selectedConnector);
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
        loaded,
  }) {
    return loaded?.call(
        connectors, cars, currentSliderValue, selectedCar, selectedConnector);
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
            double? currentSliderValue,
            CarTypeModel? selectedCar,
            ConnectorTypeModel? selectedConnector)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          connectors, cars, currentSliderValue, selectedCar, selectedConnector);
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
      {final double? currentSliderValue,
      final CarTypeModel? selectedCar,
      final ConnectorTypeModel? selectedConnector}) = _$LoadedStateImpl;

  List<ConnectorTypeModel> get connectors;
  List<CarTypeModel> get cars;
  double? get currentSliderValue;
  CarTypeModel? get selectedCar;
  ConnectorTypeModel? get selectedConnector;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
