// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num).toInt(),
      creator: json['creator'] == null
          ? null
          : UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      car: json['car'] == null
          ? null
          : CarModel.fromJson(json['car'] as Map<String, dynamic>),
      station: json['station'] == null
          ? null
          : StationModel.fromJson(json['station'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      price: (json['price'] as num?)?.toDouble(),
      orderTime: json['order_time'] == null
          ? null
          : DateTime.parse(json['order_time'] as String),
      expectedHour: (json['expected_hour'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      reason: json['reason'] as String?,
      connectorType: json['connector_type'] == null
          ? null
          : ConnectorTypeModel.fromJson(
              json['connector_type'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'car': instance.car,
      'station': instance.station,
      'status': _$OrderStatusEnumMap[instance.status],
      'price': instance.price,
      'order_time': instance.orderTime?.toIso8601String(),
      'expected_hour': instance.expectedHour,
      'comment': instance.comment,
      'reason': instance.reason,
      'connector_type': instance.connectorType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.Pending: 'pending',
  OrderStatus.Confirmed: 'confirmed',
  OrderStatus.Completed: 'completed',
  OrderStatus.Cancelled: 'cancelled',
  OrderStatus.NotConfirmed: 'not confirmed',
};
