import 'package:json_annotation/json_annotation.dart';

part 'filter_stations_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FilterStationsModel {
  final double? lng;
  final double? lat;
  final int? radius;
  final int? connectorId;
  final int? carId;
  final double? rating;

  FilterStationsModel({
    this.lng,
    this.lat,
    this.radius,
    this.connectorId,
    this.carId,
    this.rating,
  });

  factory FilterStationsModel.fromJson(Map<String, dynamic> json) =>
      _$FilterStationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FilterStationsModelToJson(this);
}
