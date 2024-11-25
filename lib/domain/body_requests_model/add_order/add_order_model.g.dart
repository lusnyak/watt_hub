// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderModel _$AddOrderModelFromJson(Map<String, dynamic> json) =>
    AddOrderModel(
      userId: (json['user_id'] as num).toInt(),
      carId: (json['car_id'] as num).toInt(),
      stationId: (json['station_id'] as num).toInt(),
      orderTime: json['order_time'] as String,
      comment: json['comment'] as String,
      expectedHour: (json['expected_hour'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$AddOrderModelToJson(AddOrderModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'car_id': instance.carId,
      'station_id': instance.stationId,
      'order_time': instance.orderTime,
      'comment': instance.comment,
      'expected_hour': instance.expectedHour,
      'price': instance.price,
    };
