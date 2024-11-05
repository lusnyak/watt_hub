// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_time')
  DateTime? get orderTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_hour')
  double? get expectedHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector_type')
  ConnectorTypeModel? get connectorType => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  UserModel? get creator => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'station')
  StationModel? get station => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'expected_hour') double? expectedHour,
      @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
      String? comment,
      UserModel? creator,
      String? status,
      @JsonKey(name: 'station') StationModel? station,
      String? reason});

  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
  $UserModelCopyWith<$Res>? get creator;
  $StationModelCopyWith<$Res>? get station;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderTime = freezed,
    Object? expectedHour = freezed,
    Object? connectorType = freezed,
    Object? comment = freezed,
    Object? creator = freezed,
    Object? status = freezed,
    Object? station = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedHour: freezed == expectedHour
          ? _value.expectedHour
          : expectedHour // ignore: cast_nullable_to_non_nullable
              as double?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res>? get connectorType {
    if (_value.connectorType == null) {
      return null;
    }

    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorType!, (value) {
      return _then(_value.copyWith(connectorType: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationModelCopyWith<$Res>? get station {
    if (_value.station == null) {
      return null;
    }

    return $StationModelCopyWith<$Res>(_value.station!, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'expected_hour') double? expectedHour,
      @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
      String? comment,
      UserModel? creator,
      String? status,
      @JsonKey(name: 'station') StationModel? station,
      String? reason});

  @override
  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
  @override
  $UserModelCopyWith<$Res>? get creator;
  @override
  $StationModelCopyWith<$Res>? get station;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderTime = freezed,
    Object? expectedHour = freezed,
    Object? connectorType = freezed,
    Object? comment = freezed,
    Object? creator = freezed,
    Object? status = freezed,
    Object? station = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedHour: freezed == expectedHour
          ? _value.expectedHour
          : expectedHour // ignore: cast_nullable_to_non_nullable
              as double?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {this.id,
      @JsonKey(name: 'order_time') this.orderTime,
      @JsonKey(name: 'expected_hour') this.expectedHour,
      @JsonKey(name: 'connector_type') this.connectorType,
      this.comment,
      this.creator,
      this.status,
      @JsonKey(name: 'station') this.station,
      this.reason});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'order_time')
  final DateTime? orderTime;
  @override
  @JsonKey(name: 'expected_hour')
  final double? expectedHour;
  @override
  @JsonKey(name: 'connector_type')
  final ConnectorTypeModel? connectorType;
  @override
  final String? comment;
  @override
  final UserModel? creator;
  @override
  @JsonKey(name: 'status')
  final OrderStatus? status;
  @override
  @JsonKey(name: 'station')
  final StationModel? station;
  @override
  final String? reason;

  @override
  String toString() {
    return 'OrderModel(id: $id, orderTime: $orderTime, expectedHour: $expectedHour, connectorType: $connectorType, comment: $comment, creator: $creator, status: $status, station: $station, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderTime, orderTime) ||
                other.orderTime == orderTime) &&
            (identical(other.expectedHour, expectedHour) ||
                other.expectedHour == expectedHour) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderTime, expectedHour,
      connectorType, comment, creator, status, station, reason);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {final int? id,
      @JsonKey(name: 'order_time') final DateTime? orderTime,
      @JsonKey(name: 'expected_hour') final double? expectedHour,
      @JsonKey(name: 'connector_type') final ConnectorTypeModel? connectorType,
      final String? comment,
      final UserModel? creator,
      final String? status,
      @JsonKey(name: 'station') final StationModel? station,
      final String? reason}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'order_time')
  DateTime? get orderTime;
  @override
  @JsonKey(name: 'expected_hour')
  double? get expectedHour;
  @override
  @JsonKey(name: 'connector_type')
  ConnectorTypeModel? get connectorType;
  @override
  String? get comment;
  @override
  UserModel? get creator;
  @override
  @JsonKey(name: 'status')
  OrderStatus? get status;
  @override
  @JsonKey(name: 'station')
  StationModel? get station;
  @override
  String? get reason;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
