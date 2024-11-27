// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      carTypeId: (json['car_type_id'] as num?)?.toInt(),
      carModelId: (json['car_model_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      connectorTypeId: (json['connector_type_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      connectorTypes: json['connector_types'] == null
          ? null
          : ConnectorTypeModel.fromJson(
              json['connector_types'] as Map<String, dynamic>),
      model: json['model'] == null
          ? null
          : CarTypeModel.fromJson(json['model'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CarTypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'car_type_id': instance.carTypeId,
      'car_model_id': instance.carModelId,
      'user_id': instance.userId,
      'connector_type_id': instance.connectorTypeId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'connector_types': instance.connectorTypes,
      'model': instance.model,
      'type': instance.type,
    };
