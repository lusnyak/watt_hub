// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReasonModelImpl _$$ReasonModelImplFromJson(Map<String, dynamic> json) =>
    _$ReasonModelImpl(
      id: (json['id'] as num).toInt(),
      message: json['message'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReasonModelImplToJson(_$ReasonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'order': instance.order,
    };
