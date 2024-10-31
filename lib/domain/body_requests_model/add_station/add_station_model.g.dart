// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddStationModel _$AddStationModelFromJson(Map<String, dynamic> json) =>
    AddStationModel(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      connectorTypeId: (json['connector_type_id'] as num?)?.toInt(),
      hourlyRate: json['hourly_rate'] as num?,
      phoneNumber: json['phone_number'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddStationModelToJson(AddStationModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'connector_type_id': instance.connectorTypeId,
      'hourly_rate': instance.hourlyRate,
      'phone_number': instance.phoneNumber,
      'name': instance.name,
      'address': instance.address,
      'user_id': instance.userId,
    };
