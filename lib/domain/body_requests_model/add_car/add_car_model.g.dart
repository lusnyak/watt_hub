// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCarModel _$AddCarModelFromJson(Map<String, dynamic> json) => AddCarModel(
      userId: (json['user_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      connectorTypeId: json['connector_type_id'] as num?,
      carModelId: json['car_model_id'] as num?,
      carTypeId: json['car_type_id'] as num?,
    );

Map<String, dynamic> _$AddCarModelToJson(AddCarModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'image': instance.image,
      'connector_type_id': instance.connectorTypeId,
      'car_type_id': instance.carTypeId,
      'car_model_id': instance.carModelId,
    };
