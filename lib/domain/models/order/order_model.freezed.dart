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
  UserModel? get creator => throw _privateConstructorUsedError;
  CarModel? get car => throw _privateConstructorUsedError;
  @JsonKey(name: 'station')
  StationModel? get station => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  OrderStatus? get status => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_time')
  DateTime? get orderTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_hour')
  double? get expectedHour => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector_type')
  ConnectorTypeModel? get connectorType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      UserModel? creator,
      CarModel? car,
      @JsonKey(name: 'station') StationModel? station,
      @JsonKey(name: 'status') OrderStatus? status,
      double? price,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'expected_hour') double? expectedHour,
      String? comment,
      String? reason,
      @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserModelCopyWith<$Res>? get creator;
  $CarModelCopyWith<$Res>? get car;
  $StationModelCopyWith<$Res>? get station;
  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
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
    Object? creator = freezed,
    Object? car = freezed,
    Object? station = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? orderTime = freezed,
    Object? expectedHour = freezed,
    Object? comment = freezed,
    Object? reason = freezed,
    Object? connectorType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedHour: freezed == expectedHour
          ? _value.expectedHour
          : expectedHour // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
  $CarModelCopyWith<$Res>? get car {
    if (_value.car == null) {
      return null;
    }

    return $CarModelCopyWith<$Res>(_value.car!, (value) {
      return _then(_value.copyWith(car: value) as $Val);
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
      UserModel? creator,
      CarModel? car,
      @JsonKey(name: 'station') StationModel? station,
      @JsonKey(name: 'status') OrderStatus? status,
      double? price,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'expected_hour') double? expectedHour,
      String? comment,
      String? reason,
      @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserModelCopyWith<$Res>? get creator;
  @override
  $CarModelCopyWith<$Res>? get car;
  @override
  $StationModelCopyWith<$Res>? get station;
  @override
  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
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
    Object? creator = freezed,
    Object? car = freezed,
    Object? station = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? orderTime = freezed,
    Object? expectedHour = freezed,
    Object? comment = freezed,
    Object? reason = freezed,
    Object? connectorType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedHour: freezed == expectedHour
          ? _value.expectedHour
          : expectedHour // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {this.id,
      this.creator,
      this.car,
      @JsonKey(name: 'station') this.station,
      @JsonKey(name: 'status') this.status,
      this.price,
      @JsonKey(name: 'order_time') this.orderTime,
      @JsonKey(name: 'expected_hour') this.expectedHour,
      this.comment,
      this.reason,
      @JsonKey(name: 'connector_type') this.connectorType,
      this.createdAt,
      this.updatedAt});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int? id;
  @override
  final UserModel? creator;
  @override
  final CarModel? car;
  @override
  @JsonKey(name: 'station')
  final StationModel? station;
  @override
  @JsonKey(name: 'status')
  final OrderStatus? status;
  @override
  final double? price;
  @override
  @JsonKey(name: 'order_time')
  final DateTime? orderTime;
  @override
  @JsonKey(name: 'expected_hour')
  final double? expectedHour;
  @override
  final String? comment;
  @override
  final String? reason;
  @override
  @JsonKey(name: 'connector_type')
  final ConnectorTypeModel? connectorType;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'OrderModel(id: $id, creator: $creator, car: $car, station: $station, status: $status, price: $price, orderTime: $orderTime, expectedHour: $expectedHour, comment: $comment, reason: $reason, connectorType: $connectorType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.orderTime, orderTime) ||
                other.orderTime == orderTime) &&
            (identical(other.expectedHour, expectedHour) ||
                other.expectedHour == expectedHour) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creator,
      car,
      station,
      status,
      price,
      orderTime,
      expectedHour,
      comment,
      reason,
      connectorType,
      createdAt,
      updatedAt);

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
      final UserModel? creator,
      final CarModel? car,
      @JsonKey(name: 'station') final StationModel? station,
      @JsonKey(name: 'status') final OrderStatus? status,
      final double? price,
      @JsonKey(name: 'order_time') final DateTime? orderTime,
      @JsonKey(name: 'expected_hour') final double? expectedHour,
      final String? comment,
      final String? reason,
      @JsonKey(name: 'connector_type') final ConnectorTypeModel? connectorType,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int? get id;
  @override
  UserModel? get creator;
  @override
  CarModel? get car;
  @override
  @JsonKey(name: 'station')
  StationModel? get station;
  @override
  @JsonKey(name: 'status')
  OrderStatus? get status;
  @override
  double? get price;
  @override
  @JsonKey(name: 'order_time')
  DateTime? get orderTime;
  @override
  @JsonKey(name: 'expected_hour')
  double? get expectedHour;
  @override
  String? get comment;
  @override
  String? get reason;
  @override
  @JsonKey(name: 'connector_type')
  ConnectorTypeModel? get connectorType;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
