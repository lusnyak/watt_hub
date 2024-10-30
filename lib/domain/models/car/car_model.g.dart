// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num?)?.toInt(),
      carType: json['carType'] == null
          ? null
          : CarTypeModel.fromJson(json['carType'] as Map<String, dynamic>),
      connectorType: json['connectorType'] == null
          ? null
          : ConnectorTypeModel.fromJson(
              json['connectorType'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carType': instance.carType,
      'connectorType': instance.connectorType,
      'images': instance.images,
      'user': instance.user,
    };
