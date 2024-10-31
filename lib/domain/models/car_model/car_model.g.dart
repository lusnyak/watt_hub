// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num).toInt(),
      carType: CarTypeModel.fromJson(json['car_type'] as Map<String, dynamic>),
      connectorType: ConnectorTypeModel.fromJson(
          json['connector_type'] as Map<String, dynamic>),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      carModel:
          CarModelTypeModel.fromJson(json['car_model'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car_type': instance.carType,
      'connector_type': instance.connectorType,
      'user': instance.user,
      'car_model': instance.carModel,
      'images': instance.images,
    };
