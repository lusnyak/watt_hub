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
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
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
abstract class _$$LoadDetailEventImplCopyWith<$Res> {
  factory _$$LoadDetailEventImplCopyWith(_$LoadDetailEventImpl value,
          $Res Function(_$LoadDetailEventImpl) then) =
      __$$LoadDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDetailEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$LoadDetailEventImpl>
    implements _$$LoadDetailEventImplCopyWith<$Res> {
  __$$LoadDetailEventImplCopyWithImpl(
      _$LoadDetailEventImpl _value, $Res Function(_$LoadDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDetailEventImpl implements _LoadDetailEvent {
  const _$LoadDetailEventImpl();

  @override
  String toString() {
    return 'DetailEvent.loadDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return loadDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return loadDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
    TResult Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (loadDetail != null) {
      return loadDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) {
    return loadDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) {
    return loadDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (loadDetail != null) {
      return loadDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadDetailEvent implements DetailEvent {
  const factory _LoadDetailEvent() = _$LoadDetailEventImpl;
}

/// @nodoc
abstract class _$$DaySelectedEventImplCopyWith<$Res> {
  factory _$$DaySelectedEventImplCopyWith(_$DaySelectedEventImpl value,
          $Res Function(_$DaySelectedEventImpl) then) =
      __$$DaySelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DaySelectedEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DaySelectedEventImpl>
    implements _$$DaySelectedEventImplCopyWith<$Res> {
  __$$DaySelectedEventImplCopyWithImpl(_$DaySelectedEventImpl _value,
      $Res Function(_$DaySelectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DaySelectedEventImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DaySelectedEventImpl implements _DaySelectedEvent {
  const _$DaySelectedEventImpl(this.selectedDate);

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
            other is _$DaySelectedEventImpl &&
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
  _$$DaySelectedEventImplCopyWith<_$DaySelectedEventImpl> get copyWith =>
      __$$DaySelectedEventImplCopyWithImpl<_$DaySelectedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return daySelected(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return daySelected?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
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
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) {
    return daySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) {
    return daySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(this);
    }
    return orElse();
  }
}

abstract class _DaySelectedEvent implements DetailEvent {
  const factory _DaySelectedEvent(final DateTime selectedDate) =
      _$DaySelectedEventImpl;

  DateTime get selectedDate;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaySelectedEventImplCopyWith<_$DaySelectedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeSelectedEventImplCopyWith<$Res> {
  factory _$$TimeSelectedEventImplCopyWith(_$TimeSelectedEventImpl value,
          $Res Function(_$TimeSelectedEventImpl) then) =
      __$$TimeSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedTime});
}

/// @nodoc
class __$$TimeSelectedEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$TimeSelectedEventImpl>
    implements _$$TimeSelectedEventImplCopyWith<$Res> {
  __$$TimeSelectedEventImplCopyWithImpl(_$TimeSelectedEventImpl _value,
      $Res Function(_$TimeSelectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = null,
  }) {
    return _then(_$TimeSelectedEventImpl(
      null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeSelectedEventImpl implements _TimeSelectedEvent {
  const _$TimeSelectedEventImpl(this.selectedTime);

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
            other is _$TimeSelectedEventImpl &&
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
  _$$TimeSelectedEventImplCopyWith<_$TimeSelectedEventImpl> get copyWith =>
      __$$TimeSelectedEventImplCopyWithImpl<_$TimeSelectedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return timeSelected(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return timeSelected?.call(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
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
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) {
    return timeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) {
    return timeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(this);
    }
    return orElse();
  }
}

abstract class _TimeSelectedEvent implements DetailEvent {
  const factory _TimeSelectedEvent(final String selectedTime) =
      _$TimeSelectedEventImpl;

  String get selectedTime;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSelectedEventImplCopyWith<_$TimeSelectedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationSelectedEventImplCopyWith<$Res> {
  factory _$$DurationSelectedEventImplCopyWith(
          _$DurationSelectedEventImpl value,
          $Res Function(_$DurationSelectedEventImpl) then) =
      __$$DurationSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedDuration});
}

/// @nodoc
class __$$DurationSelectedEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DurationSelectedEventImpl>
    implements _$$DurationSelectedEventImplCopyWith<$Res> {
  __$$DurationSelectedEventImplCopyWithImpl(_$DurationSelectedEventImpl _value,
      $Res Function(_$DurationSelectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDuration = null,
  }) {
    return _then(_$DurationSelectedEventImpl(
      null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DurationSelectedEventImpl implements _DurationSelectedEvent {
  const _$DurationSelectedEventImpl(this.selectedDuration);

  @override
  final int selectedDuration;

  @override
  String toString() {
    return 'DetailEvent.durationSelected(selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationSelectedEventImpl &&
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
  _$$DurationSelectedEventImplCopyWith<_$DurationSelectedEventImpl>
      get copyWith => __$$DurationSelectedEventImplCopyWithImpl<
          _$DurationSelectedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return durationSelected(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return durationSelected?.call(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
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
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) {
    return durationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) {
    return durationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (durationSelected != null) {
      return durationSelected(this);
    }
    return orElse();
  }
}

abstract class _DurationSelectedEvent implements DetailEvent {
  const factory _DurationSelectedEvent(final int selectedDuration) =
      _$DurationSelectedEventImpl;

  int get selectedDuration;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationSelectedEventImplCopyWith<_$DurationSelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectorTypeSelectedEventImplCopyWith<$Res> {
  factory _$$ConnectorTypeSelectedEventImplCopyWith(
          _$ConnectorTypeSelectedEventImpl value,
          $Res Function(_$ConnectorTypeSelectedEventImpl) then) =
      __$$ConnectorTypeSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectorTypeModel selectedConnectorType});

  $ConnectorTypeModelCopyWith<$Res> get selectedConnectorType;
}

/// @nodoc
class __$$ConnectorTypeSelectedEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$ConnectorTypeSelectedEventImpl>
    implements _$$ConnectorTypeSelectedEventImplCopyWith<$Res> {
  __$$ConnectorTypeSelectedEventImplCopyWithImpl(
      _$ConnectorTypeSelectedEventImpl _value,
      $Res Function(_$ConnectorTypeSelectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedConnectorType = null,
  }) {
    return _then(_$ConnectorTypeSelectedEventImpl(
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

class _$ConnectorTypeSelectedEventImpl implements _ConnectorTypeSelectedEvent {
  const _$ConnectorTypeSelectedEventImpl(this.selectedConnectorType);

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
            other is _$ConnectorTypeSelectedEventImpl &&
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
  _$$ConnectorTypeSelectedEventImplCopyWith<_$ConnectorTypeSelectedEventImpl>
      get copyWith => __$$ConnectorTypeSelectedEventImplCopyWithImpl<
          _$ConnectorTypeSelectedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetail,
    required TResult Function(DateTime selectedDate) daySelected,
    required TResult Function(String selectedTime) timeSelected,
    required TResult Function(int selectedDuration) durationSelected,
    required TResult Function(ConnectorTypeModel selectedConnectorType)
        connectorTypeSelected,
  }) {
    return connectorTypeSelected(selectedConnectorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetail,
    TResult? Function(DateTime selectedDate)? daySelected,
    TResult? Function(String selectedTime)? timeSelected,
    TResult? Function(int selectedDuration)? durationSelected,
    TResult? Function(ConnectorTypeModel selectedConnectorType)?
        connectorTypeSelected,
  }) {
    return connectorTypeSelected?.call(selectedConnectorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetail,
    TResult Function(DateTime selectedDate)? daySelected,
    TResult Function(String selectedTime)? timeSelected,
    TResult Function(int selectedDuration)? durationSelected,
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
    required TResult Function(_LoadDetailEvent value) loadDetail,
    required TResult Function(_DaySelectedEvent value) daySelected,
    required TResult Function(_TimeSelectedEvent value) timeSelected,
    required TResult Function(_DurationSelectedEvent value) durationSelected,
    required TResult Function(_ConnectorTypeSelectedEvent value)
        connectorTypeSelected,
  }) {
    return connectorTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailEvent value)? loadDetail,
    TResult? Function(_DaySelectedEvent value)? daySelected,
    TResult? Function(_TimeSelectedEvent value)? timeSelected,
    TResult? Function(_DurationSelectedEvent value)? durationSelected,
    TResult? Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
  }) {
    return connectorTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailEvent value)? loadDetail,
    TResult Function(_DaySelectedEvent value)? daySelected,
    TResult Function(_TimeSelectedEvent value)? timeSelected,
    TResult Function(_DurationSelectedEvent value)? durationSelected,
    TResult Function(_ConnectorTypeSelectedEvent value)? connectorTypeSelected,
    required TResult orElse(),
  }) {
    if (connectorTypeSelected != null) {
      return connectorTypeSelected(this);
    }
    return orElse();
  }
}

abstract class _ConnectorTypeSelectedEvent implements DetailEvent {
  const factory _ConnectorTypeSelectedEvent(
          final ConnectorTypeModel selectedConnectorType) =
      _$ConnectorTypeSelectedEventImpl;

  ConnectorTypeModel get selectedConnectorType;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectorTypeSelectedEventImplCopyWith<_$ConnectorTypeSelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoadingState value) loading,
    required TResult Function(_DetailLoadedState value) loaded,
    required TResult Function(_DetailErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoadingState value)? loading,
    TResult? Function(_DetailLoadedState value)? loaded,
    TResult? Function(_DetailErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoadingState value)? loading,
    TResult Function(_DetailLoadedState value)? loaded,
    TResult Function(_DetailErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
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
}

/// @nodoc
abstract class _$$DetailLoadingStateImplCopyWith<$Res> {
  factory _$$DetailLoadingStateImplCopyWith(_$DetailLoadingStateImpl value,
          $Res Function(_$DetailLoadingStateImpl) then) =
      __$$DetailLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailLoadingStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailLoadingStateImpl>
    implements _$$DetailLoadingStateImplCopyWith<$Res> {
  __$$DetailLoadingStateImplCopyWithImpl(_$DetailLoadingStateImpl _value,
      $Res Function(_$DetailLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailLoadingStateImpl implements _DetailLoadingState {
  const _$DetailLoadingStateImpl();

  @override
  String toString() {
    return 'DetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_DetailLoadingState value) loading,
    required TResult Function(_DetailLoadedState value) loaded,
    required TResult Function(_DetailErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoadingState value)? loading,
    TResult? Function(_DetailLoadedState value)? loaded,
    TResult? Function(_DetailErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoadingState value)? loading,
    TResult Function(_DetailLoadedState value)? loaded,
    TResult Function(_DetailErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailLoadingState implements DetailState {
  const factory _DetailLoadingState() = _$DetailLoadingStateImpl;
}

/// @nodoc
abstract class _$$DetailLoadedStateImplCopyWith<$Res> {
  factory _$$DetailLoadedStateImplCopyWith(_$DetailLoadedStateImpl value,
          $Res Function(_$DetailLoadedStateImpl) then) =
      __$$DetailLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime? selectedDate,
      String? selectedTime,
      int? selectedDuration,
      ConnectorTypeModel? selectedConnectorType,
      List<ConnectorTypeModel>? connectorTypes});

  $ConnectorTypeModelCopyWith<$Res>? get selectedConnectorType;
}

/// @nodoc
class __$$DetailLoadedStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailLoadedStateImpl>
    implements _$$DetailLoadedStateImplCopyWith<$Res> {
  __$$DetailLoadedStateImplCopyWithImpl(_$DetailLoadedStateImpl _value,
      $Res Function(_$DetailLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? selectedTime = freezed,
    Object? selectedDuration = freezed,
    Object? selectedConnectorType = freezed,
    Object? connectorTypes = freezed,
  }) {
    return _then(_$DetailLoadedStateImpl(
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDuration: freezed == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedConnectorType: freezed == selectedConnectorType
          ? _value.selectedConnectorType
          : selectedConnectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      connectorTypes: freezed == connectorTypes
          ? _value._connectorTypes
          : connectorTypes // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>?,
    ));
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
      return _then(_value.copyWith(selectedConnectorType: value));
    });
  }
}

/// @nodoc

class _$DetailLoadedStateImpl implements _DetailLoadedState {
  const _$DetailLoadedStateImpl(
      {this.selectedDate,
      this.selectedTime,
      this.selectedDuration,
      this.selectedConnectorType,
      final List<ConnectorTypeModel>? connectorTypes})
      : _connectorTypes = connectorTypes;

  @override
  final DateTime? selectedDate;
  @override
  final String? selectedTime;
  @override
  final int? selectedDuration;
  @override
  final ConnectorTypeModel? selectedConnectorType;
  final List<ConnectorTypeModel>? _connectorTypes;
  @override
  List<ConnectorTypeModel>? get connectorTypes {
    final value = _connectorTypes;
    if (value == null) return null;
    if (_connectorTypes is EqualUnmodifiableListView) return _connectorTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailState.loaded(selectedDate: $selectedDate, selectedTime: $selectedTime, selectedDuration: $selectedDuration, selectedConnectorType: $selectedConnectorType, connectorTypes: $connectorTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedStateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration) &&
            (identical(other.selectedConnectorType, selectedConnectorType) ||
                other.selectedConnectorType == selectedConnectorType) &&
            const DeepCollectionEquality()
                .equals(other._connectorTypes, _connectorTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      selectedTime,
      selectedDuration,
      selectedConnectorType,
      const DeepCollectionEquality().hash(_connectorTypes));

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLoadedStateImplCopyWith<_$DetailLoadedStateImpl> get copyWith =>
      __$$DetailLoadedStateImplCopyWithImpl<_$DetailLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(selectedDate, selectedTime, selectedDuration,
        selectedConnectorType, connectorTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(selectedDate, selectedTime, selectedDuration,
        selectedConnectorType, connectorTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedDate, selectedTime, selectedDuration,
          selectedConnectorType, connectorTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoadingState value) loading,
    required TResult Function(_DetailLoadedState value) loaded,
    required TResult Function(_DetailErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoadingState value)? loading,
    TResult? Function(_DetailLoadedState value)? loaded,
    TResult? Function(_DetailErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoadingState value)? loading,
    TResult Function(_DetailLoadedState value)? loaded,
    TResult Function(_DetailErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoadedState implements DetailState {
  const factory _DetailLoadedState(
          {final DateTime? selectedDate,
          final String? selectedTime,
          final int? selectedDuration,
          final ConnectorTypeModel? selectedConnectorType,
          final List<ConnectorTypeModel>? connectorTypes}) =
      _$DetailLoadedStateImpl;

  DateTime? get selectedDate;
  String? get selectedTime;
  int? get selectedDuration;
  ConnectorTypeModel? get selectedConnectorType;
  List<ConnectorTypeModel>? get connectorTypes;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailLoadedStateImplCopyWith<_$DetailLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailErrorStateImplCopyWith<$Res> {
  factory _$$DetailErrorStateImplCopyWith(_$DetailErrorStateImpl value,
          $Res Function(_$DetailErrorStateImpl) then) =
      __$$DetailErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DetailErrorStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailErrorStateImpl>
    implements _$$DetailErrorStateImplCopyWith<$Res> {
  __$$DetailErrorStateImplCopyWithImpl(_$DetailErrorStateImpl _value,
      $Res Function(_$DetailErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DetailErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailErrorStateImpl implements _DetailErrorState {
  const _$DetailErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DetailState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailErrorStateImplCopyWith<_$DetailErrorStateImpl> get copyWith =>
      __$$DetailErrorStateImplCopyWithImpl<_$DetailErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            DateTime? selectedDate,
            String? selectedTime,
            int? selectedDuration,
            ConnectorTypeModel? selectedConnectorType,
            List<ConnectorTypeModel>? connectorTypes)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoadingState value) loading,
    required TResult Function(_DetailLoadedState value) loaded,
    required TResult Function(_DetailErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoadingState value)? loading,
    TResult? Function(_DetailLoadedState value)? loaded,
    TResult? Function(_DetailErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoadingState value)? loading,
    TResult Function(_DetailLoadedState value)? loaded,
    TResult Function(_DetailErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DetailErrorState implements DetailState {
  const factory _DetailErrorState(final String error) = _$DetailErrorStateImpl;

  String get error;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailErrorStateImplCopyWith<_$DetailErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
