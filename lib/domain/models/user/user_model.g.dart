// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
