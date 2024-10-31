// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationModelImpl _$$StationModelImplFromJson(Map<String, dynamic> json) =>
    _$StationModelImpl(
      id: (json['id'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      connectorType: (json['connector_type'] as List<dynamic>?)
          ?.map((e) => ConnectorTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourlyRate: json['hourly_rate'] as num?,
      kwt: json['kwt'] as num?,
      phoneNumber: json['phone_number'] as String?,
      name: json['name'] as String?,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      address: json['address'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      averageRate: (json['average_rate'] as num?)?.toDouble(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StationModelImplToJson(_$StationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'connector_type': instance.connectorType,
      'hourly_rate': instance.hourlyRate,
      'kwt': instance.kwt,
      'phone_number': instance.phoneNumber,
      'name': instance.name,
      'image': instance.image,
      'address': instance.address,
      'reviews': instance.reviews,
      'average_rate': instance.averageRate,
      'user': instance.user,
    };
