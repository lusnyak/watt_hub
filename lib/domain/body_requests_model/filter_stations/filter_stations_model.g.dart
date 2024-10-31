// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_stations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterStationsModel _$FilterStationsModelFromJson(Map<String, dynamic> json) =>
    FilterStationsModel(
      lng: (json['lng'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toInt(),
      connectorId: (json['connector_id'] as num?)?.toInt(),
      carId: (json['car_id'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FilterStationsModelToJson(
        FilterStationsModel instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
      'radius': instance.radius,
      'connector_id': instance.connectorId,
      'car_id': instance.carId,
      'rating': instance.rating,
    };
