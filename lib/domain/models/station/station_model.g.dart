// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationModelImpl _$$StationModelImplFromJson(Map<String, dynamic> json) =>
    _$StationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      connectorTypeId: (json['connector_type_id'] as num?)?.toInt(),
      connectorTypes: (json['connector_types'] as List<dynamic>?)
          ?.map((e) => ConnectorTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourlyRate: json['hourly_rate'] as String?,
      kwt: json['kwt'] as num?,
      phoneNumber: json['phone_number'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      averageRate: (json['average_rate'] as num?)?.toDouble(),
      userId: (json['user_id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StationModelImplToJson(_$StationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'connector_type_id': instance.connectorTypeId,
      'connector_types': instance.connectorTypes,
      'hourly_rate': instance.hourlyRate,
      'kwt': instance.kwt,
      'phone_number': instance.phoneNumber,
      'name': instance.name,
      'address': instance.address,
      'image': instance.image,
      'reviews': instance.reviews,
      'average_rate': instance.averageRate,
      'user_id': instance.userId,
      'user': instance.user,
      'orders': instance.orders,
    };
