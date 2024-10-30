// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num).toInt(),
      carType: CarTypeModel.fromJson(json['carType'] as Map<String, dynamic>),
      connectorTypeModel: ConnectorTypeModel.fromJson(
          json['connectorTypeModel'] as Map<String, dynamic>),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      carModelType: CarModelTypeModel.fromJson(
          json['carModelType'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carType': instance.carType,
      'connectorTypeModel': instance.connectorTypeModel,
      'user': instance.user,
      'carModelType': instance.carModelType,
      'images': instance.images,
    };
