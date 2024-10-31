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
      connectorType: (json['connectorType'] as List<dynamic>?)
          ?.map((e) => ConnectorTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
      creator: json['creator'] == null
          ? null
          : UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      status: json['status'] as String?,
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
      'connectorType': instance.connectorType,
      'comment': instance.comment,
      'creator': instance.creator,
      'status': instance.status,
      'station': instance.station,
      'reason': instance.reason,
    };
