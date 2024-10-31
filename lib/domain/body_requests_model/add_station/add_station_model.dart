import 'package:json_annotation/json_annotation.dart';

part 'add_station_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AddStationModel {
  final double? lat;
  final double? lng;
  final DateTime? startTime;
  final DateTime? endTime;
  final int? connectorTypeId;
  final num? hourlyRate;
  final String? phoneNumber;
  final String? name;
  final String? address;
  final int? userId;

  AddStationModel({
    this.lat,
    this.lng,
    this.startTime,
    this.endTime,
    this.connectorTypeId,
    this.hourlyRate,
    this.phoneNumber,
    this.name,
    this.address,
    this.userId,
  });

  factory AddStationModel.fromJson(Map<String, dynamic> json) =>
      _$AddStationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddStationModelToJson(this);
}
