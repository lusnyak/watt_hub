// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: (json['id'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      station: json['station'] == null
          ? null
          : StationModel.fromJson(json['station'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'message': instance.message,
      'user': instance.user,
      'station': instance.station,
    };
