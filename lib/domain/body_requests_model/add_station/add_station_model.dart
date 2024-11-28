import 'package:json_annotation/json_annotation.dart';

part 'add_station_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AddStationModel {
  final double? lat;
  final double? lng;
  final DateTime? startTime;
  final DateTime? endTime;
  // final List<int>? connectorTypeId;
  final dynamic connectorTypeId;
  // final num? hourlyRate;
  final dynamic hourlyRate;
  final String? phoneNumber;
  final String? name;
  final String? address;
  final int? userId;
  // final List<String>? image;
  final dynamic image;
  final num? kwt;

  AddStationModel( {
    this.kwt,
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
    this.image,
  });

  factory AddStationModel.fromJson(Map<String, dynamic> json) =>
      _$AddStationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddStationModelToJson(this);
}
