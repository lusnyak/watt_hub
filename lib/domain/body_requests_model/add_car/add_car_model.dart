import 'package:json_annotation/json_annotation.dart';

part 'add_car_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AddCarModel {

  final int? userId;
  final String? name;
  final String? image;
  final num? connectorTypeId;
  final num? carTypeId;
  final num? carModelId;

  AddCarModel({
    this.userId,
    this.name,
    this.image,
    this.connectorTypeId,
    this.carModelId,
    this.carTypeId
  });

  factory AddCarModel.fromJson(Map<String, dynamic> json) =>
      _$AddCarModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddCarModelToJson(this);

}
