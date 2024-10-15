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
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      connectorType: ConnectorTypeModel.fromJson(
          json['connectorType'] as Map<String, dynamic>),
      hourlyRate: (json['hourlyRate'] as num).toInt(),
      kwt: (json['kwt'] as num).toInt(),
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
      image: (json['image'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String,
      reviews:
          (json['reviews'] as List<dynamic>).map((e) => e as String).toList(),
      averageRate: (json['averageRate'] as num).toDouble(),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StationModelImplToJson(_$StationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'connectorType': instance.connectorType,
      'hourlyRate': instance.hourlyRate,
      'kwt': instance.kwt,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'image': instance.image,
      'address': instance.address,
      'reviews': instance.reviews,
      'averageRate': instance.averageRate,
      'user': instance.user,
    };
