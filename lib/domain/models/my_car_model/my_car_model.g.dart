// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      carTypeId: (json['car_type_id'] as num).toInt(),
      carModelId: (json['car_model_id'] as num).toInt(),
      connectorTypeId: (json['connector_type_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      carType: CarTypeModel.fromJson(json['car_type'] as Map<String, dynamic>),
      connectorType: ConnectorTypeModel.fromJson(
          json['connector_type'] as Map<String, dynamic>),
      carModel:
          CarModelTypeModel.fromJson(json['car_model'] as Map<String, dynamic>),
      images: json['images'] as String,
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'car_type_id': instance.carTypeId,
      'car_model_id': instance.carModelId,
      'connector_type_id': instance.connectorTypeId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user': instance.user,
      'car_type': instance.carType,
      'connector_type': instance.connectorType,
      'car_model': instance.carModel,
      'images': instance.images,
    };
