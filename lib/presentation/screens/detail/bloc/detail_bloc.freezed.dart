// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(String selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(String selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(String selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySelected value) daySelected,
    required TResult Function(TimeSelected value) timeSelected,
    required TResult Function(DurationSelected value) durationSelected,
    required TResult Function(ConnectorTypeSelected value)
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DaySelected value)? daySelected,
    TResult? Function(TimeSelected value)? timeSelected,
    TResult? Function(DurationSelected value)? durationSelected,
    TResult? Function(ConnectorTypeSelected value)? connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySelected value)? daySelected,
    TResult Function(TimeSelected value)? timeSelected,
    TResult Function(DurationSelected value)? durationSelected,
    TResult Function(ConnectorTypeSelected value)? connectorTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DaySelectedImplCopyWith<$Res> {
  factory _$$DaySelectedImplCopyWith(
          _$DaySelectedImpl value, $Res Function(_$DaySelectedImpl) then) =
      __$$DaySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DaySelectedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DaySelectedImpl>
    implements _$$DaySelectedImplCopyWith<$Res> {
  __$$DaySelectedImplCopyWithImpl(
      _$DaySelectedImpl _value, $Res Function(_$DaySelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DaySelectedImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DaySelectedImpl implements DaySelected {
  const _$DaySelectedImpl(this.selectedDate);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'DetailEvent.daySelected(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaySelectedImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaySelectedImplCopyWith<_$DaySelectedImpl> get copyWith =>
      __$$DaySelectedImplCopyWithImpl<_$DaySelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(String selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return daySelected(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(String selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return daySelected?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(String selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySelected value) daySelected,
    required TResult Function(TimeSelected value) timeSelected,
    required TResult Function(DurationSelected value) durationSelected,
    required TResult Function(ConnectorTypeSelected value)
        connectorTypeSelected,
  }) {
    return daySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DaySelected value)? daySelected,
    TResult? Function(TimeSelected value)? timeSelected,
    TResult? Function(DurationSelected value)? durationSelected,
    TResult? Function(ConnectorTypeSelected value)? connectorTypeSelected,
  }) {
    return daySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySelected value)? daySelected,
    TResult Function(TimeSelected value)? timeSelected,
    TResult Function(DurationSelected value)? durationSelected,
    TResult Function(ConnectorTypeSelected value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(this);
    }
    return orElse();
  }
}

abstract class DaySelected implements DetailEvent {
  const factory DaySelected(final DateTime selectedDate) = _$DaySelectedImpl;

  DateTime get selectedDate;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaySelectedImplCopyWith<_$DaySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeSelectedImplCopyWith<$Res> {
  factory _$$TimeSelectedImplCopyWith(
          _$TimeSelectedImpl value, $Res Function(_$TimeSelectedImpl) then) =
      __$$TimeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedTime});
}

/// @nodoc
class __$$TimeSelectedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$TimeSelectedImpl>
    implements _$$TimeSelectedImplCopyWith<$Res> {
  __$$TimeSelectedImplCopyWithImpl(
      _$TimeSelectedImpl _value, $Res Function(_$TimeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = null,
  }) {
    return _then(_$TimeSelectedImpl(
      null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeSelectedImpl implements TimeSelected {
  const _$TimeSelectedImpl(this.selectedTime);

  @override
  final String selectedTime;

  @override
  String toString() {
    return 'DetailEvent.timeSelected(selectedTime: $selectedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSelectedImpl &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTime);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSelectedImplCopyWith<_$TimeSelectedImpl> get copyWith =>
      __$$TimeSelectedImplCopyWithImpl<_$TimeSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(String selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return timeSelected(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(String selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return timeSelected?.call(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(String selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(selectedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySelected value) daySelected,
    required TResult Function(TimeSelected value) timeSelected,
    required TResult Function(DurationSelected value) durationSelected,
    required TResult Function(ConnectorTypeSelected value)
        connectorTypeSelected,
  }) {
    return timeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DaySelected value)? daySelected,
    TResult? Function(TimeSelected value)? timeSelected,
    TResult? Function(DurationSelected value)? durationSelected,
    TResult? Function(ConnectorTypeSelected value)? connectorTypeSelected,
  }) {
    return timeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySelected value)? daySelected,
    TResult Function(TimeSelected value)? timeSelected,
    TResult Function(DurationSelected value)? durationSelected,
    TResult Function(ConnectorTypeSelected value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(this);
    }
    return orElse();
  }
}

abstract class TimeSelected implements DetailEvent {
  const factory TimeSelected(final String selectedTime) = _$TimeSelectedImpl;

  String get selectedTime;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSelectedImplCopyWith<_$TimeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationSelectedImplCopyWith<$Res> {
  factory _$$DurationSelectedImplCopyWith(_$DurationSelectedImpl value,
          $Res Function(_$DurationSelectedImpl) then) =
      __$$DurationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDuration});
}

/// @nodoc
class __$$DurationSelectedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DurationSelectedImpl>
    implements _$$DurationSelectedImplCopyWith<$Res> {
  __$$DurationSelectedImplCopyWithImpl(_$DurationSelectedImpl _value,
      $Res Function(_$DurationSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDuration = null,
  }) {
    return _then(_$DurationSelectedImpl(
      null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DurationSelectedImpl implements DurationSelected {
  const _$DurationSelectedImpl(this.selectedDuration);

  @override
  final String selectedDuration;

  @override
  String toString() {
    return 'DetailEvent.durationSelected(selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationSelectedImpl &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDuration);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationSelectedImplCopyWith<_$DurationSelectedImpl> get copyWith =>
      __$$DurationSelectedImplCopyWithImpl<_$DurationSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(String selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return durationSelected(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(String selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return durationSelected?.call(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(String selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (durationSelected != null) {
      return durationSelected(selectedDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySelected value) daySelected,
    required TResult Function(TimeSelected value) timeSelected,
    required TResult Function(DurationSelected value) durationSelected,
    required TResult Function(ConnectorTypeSelected value)
        connectorTypeSelected,
  }) {
    return durationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DaySelected value)? daySelected,
    TResult? Function(TimeSelected value)? timeSelected,
    TResult? Function(DurationSelected value)? durationSelected,
    TResult? Function(ConnectorTypeSelected value)? connectorTypeSelected,
  }) {
    return durationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySelected value)? daySelected,
    TResult Function(TimeSelected value)? timeSelected,
    TResult Function(DurationSelected value)? durationSelected,
    TResult Function(ConnectorTypeSelected value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (durationSelected != null) {
      return durationSelected(this);
    }
    return orElse();
  }
}

abstract class DurationSelected implements DetailEvent {
  const factory DurationSelected(final String selectedDuration) =
      _$DurationSelectedImpl;

  String get selectedDuration;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationSelectedImplCopyWith<_$DurationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectorTypeSelectedImplCopyWith<$Res> {
  factory _$$ConnectorTypeSelectedImplCopyWith(
          _$ConnectorTypeSelectedImpl value,
          $Res Function(_$ConnectorTypeSelectedImpl) then) =
      __$$ConnectorTypeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorTypeModel selectedConnectorType});

  $ConnectorTypeModelCopyWith<$Res> get selectedConnectorType;
}

/// @nodoc
class __$$ConnectorTypeSelectedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$ConnectorTypeSelectedImpl>
    implements _$$ConnectorTypeSelectedImplCopyWith<$Res> {
  __$$ConnectorTypeSelectedImplCopyWithImpl(_$ConnectorTypeSelectedImpl _value,
      $Res Function(_$ConnectorTypeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedConnectorType = null,
  }) {
    return _then(_$ConnectorTypeSelectedImpl(
      null == selectedConnectorType
          ? _value.selectedConnectorType
          : selectedConnectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
    ));
  }

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res> get selectedConnectorType {
    return $ConnectorTypeModelCopyWith<$Res>(_value.selectedConnectorType,
        (value) {
      return _then(_value.copyWith(selectedConnectorType: value));
    });
  }
}

/// @nodoc

class _$ConnectorTypeSelectedImpl implements ConnectorTypeSelected {
  const _$ConnectorTypeSelectedImpl(this.selectedConnectorType);

  @override
  final ConnectorTypeModel selectedConnectorType;

  @override
  String toString() {
    return 'DetailEvent.connectorTypeSelected(selectedConnectorType: $selectedConnectorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorTypeSelectedImpl &&
            (identical(other.selectedConnectorType, selectedConnectorType) ||
                other.selectedConnectorType == selectedConnectorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedConnectorType);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectorTypeSelectedImplCopyWith<_$ConnectorTypeSelectedImpl>
      get copyWith => __$$ConnectorTypeSelectedImplCopyWithImpl<
          _$ConnectorTypeSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(String selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return connectorTypeSelected(selectedConnectorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(String selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return connectorTypeSelected?.call(selectedConnectorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(String selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (connectorTypeSelected != null) {
      return connectorTypeSelected(selectedConnectorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySelected value) daySelected,
    required TResult Function(TimeSelected value) timeSelected,
    required TResult Function(DurationSelected value) durationSelected,
    required TResult Function(ConnectorTypeSelected value)
        connectorTypeSelected,
  }) {
    return connectorTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DaySelected value)? daySelected,
    TResult? Function(TimeSelected value)? timeSelected,
    TResult? Function(DurationSelected value)? durationSelected,
    TResult? Function(ConnectorTypeSelected value)? connectorTypeSelected,
  }) {
    return connectorTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySelected value)? daySelected,
    TResult Function(TimeSelected value)? timeSelected,
    TResult Function(DurationSelected value)? durationSelected,
    TResult Function(ConnectorTypeSelected value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (connectorTypeSelected != null) {
      return connectorTypeSelected(this);
    }
    return orElse();
  }
}

abstract class ConnectorTypeSelected implements DetailEvent {
  const factory ConnectorTypeSelected(
          final ConnectorTypeModel selectedConnectorType) =
      _$ConnectorTypeSelectedImpl;

  ConnectorTypeModel get selectedConnectorType;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectorTypeSelectedImplCopyWith<_$ConnectorTypeSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  String get selectedTime => throw _privateConstructorUsedError;
  String get selectedDuration => throw _privateConstructorUsedError;
  ConnectorTypeModel? get selectedConnectorType =>
      throw _privateConstructorUsedError;
  TextEditingController get timeController =>
      throw _privateConstructorUsedError;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {DateTime? selectedDay,
      String selectedTime,
      String selectedDuration,
      ConnectorTypeModel? selectedConnectorType,
      TextEditingController timeController});

  $ConnectorTypeModelCopyWith<$Res>? get selectedConnectorType;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? selectedConnectorType = freezed,
    Object? timeController = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as String,
      selectedConnectorType: freezed == selectedConnectorType
          ? _value.selectedConnectorType
          : selectedConnectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      timeController: null == timeController
          ? _value.timeController
          : timeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res>? get selectedConnectorType {
    if (_value.selectedConnectorType == null) {
      return null;
    }

    return $ConnectorTypeModelCopyWith<$Res>(_value.selectedConnectorType!,
        (value) {
      return _then(_value.copyWith(selectedConnectorType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? selectedDay,
      String selectedTime,
      String selectedDuration,
      ConnectorTypeModel? selectedConnectorType,
      TextEditingController timeController});

  @override
  $ConnectorTypeModelCopyWith<$Res>? get selectedConnectorType;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? selectedConnectorType = freezed,
    Object? timeController = null,
  }) {
    return _then(_$DetailStateImpl(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as String,
      selectedConnectorType: freezed == selectedConnectorType
          ? _value.selectedConnectorType
          : selectedConnectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      timeController: null == timeController
          ? _value.timeController
          : timeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {required this.selectedDay,
      required this.selectedTime,
      required this.selectedDuration,
      required this.selectedConnectorType,
      required this.timeController});

  @override
  final DateTime? selectedDay;
  @override
  final String selectedTime;
  @override
  final String selectedDuration;
  @override
  final ConnectorTypeModel? selectedConnectorType;
  @override
  final TextEditingController timeController;

  @override
  String toString() {
    return 'DetailState(selectedDay: $selectedDay, selectedTime: $selectedTime, selectedDuration: $selectedDuration, selectedConnectorType: $selectedConnectorType, timeController: $timeController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration) &&
            (identical(other.selectedConnectorType, selectedConnectorType) ||
                other.selectedConnectorType == selectedConnectorType) &&
            (identical(other.timeController, timeController) ||
                other.timeController == timeController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay, selectedTime,
      selectedDuration, selectedConnectorType, timeController);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {required final DateTime? selectedDay,
      required final String selectedTime,
      required final String selectedDuration,
      required final ConnectorTypeModel? selectedConnectorType,
      required final TextEditingController timeController}) = _$DetailStateImpl;

  @override
  DateTime? get selectedDay;
  @override
  String get selectedTime;
  @override
  String get selectedDuration;
  @override
  ConnectorTypeModel? get selectedConnectorType;
  @override
  TextEditingController get timeController;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
