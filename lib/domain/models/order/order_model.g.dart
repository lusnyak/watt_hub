// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      orderTime: json['order_time'] == null
          ? null
          : DateTime.parse(json['order_time'] as String),
      expectedHour: (json['expected_hour'] as num?)?.toDouble(),
      connectorType: json['connector_type'] == null
          ? null
          : ConnectorTypeModel.fromJson(
              json['connector_type'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
      creator: json['creator'] == null
          ? null
          : UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      station: json['station'] == null
          ? null
          : StationModel.fromJson(json['station'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_time': instance.orderTime?.toIso8601String(),
      'expected_hour': instance.expectedHour,
      'connector_type': instance.connectorType,
      'comment': instance.comment,
      'creator': instance.creator,
      'status': _$OrderStatusEnumMap[instance.status],
      'station': instance.station,
      'reason': instance.reason,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.Pending: 'pending',
  OrderStatus.Confirmed: 'confirmed',
  OrderStatus.Completed: 'completed',
  OrderStatus.Cancelled: 'cancelled',
  OrderStatus.NotConfirmed: 'not confirmed',
};
