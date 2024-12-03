// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_station_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChooseStationAddressModelImpl _$$ChooseStationAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChooseStationAddressModelImpl(
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ChooseStationAddressModelImplToJson(
        _$ChooseStationAddressModelImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
