// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num?)?.toInt(),
      carType: json['car_type'] == null
          ? null
          : CarTypeModel.fromJson(json['car_type'] as Map<String, dynamic>),
      connectorType: json['connector_type'] == null
          ? null
          : ConnectorTypeModel.fromJson(
              json['connector_type'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car_type': instance.carType,
      'connector_type': instance.connectorType,
      'images': instance.images,
      'user': instance.user,
      'title': instance.title,
    };
