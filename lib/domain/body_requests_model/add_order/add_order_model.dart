import 'package:json_annotation/json_annotation.dart';

part 'add_order_model.g.dart';

@JsonSerializable()
class AddOrderModel {
  @JsonKey(name: 'user_id')
  final int userId;

  @JsonKey(name: 'car_id')
  final int carId;

  @JsonKey(name: 'station_id')
  final int stationId;

  @JsonKey(name: 'order_time')
  final String orderTime;

  final String comment;

  @JsonKey(name: 'expected_hour')
  final int expectedHour;

  final double price;

  AddOrderModel({
    required this.userId,
    required this.carId,
    required this.stationId,
    required this.orderTime,
    required this.comment,
    required this.expectedHour,
    required this.price,
  });

  factory AddOrderModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderModelToJson(this);
}
