// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_add_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarAddResponseModelImpl _$$CarAddResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CarAddResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      carTypeId: (json['car_type_id'] as num?)?.toInt(),
      carModelId: (json['car_model_id'] as num?)?.toInt(),
      connectorTypeId: (json['connector_type_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CarAddResponseModelImplToJson(
        _$CarAddResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'car_type_id': instance.carTypeId,
      'car_model_id': instance.carModelId,
      'connector_type_id': instance.connectorTypeId,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
