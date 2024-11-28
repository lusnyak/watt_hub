import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_add_response_model.freezed.dart';

part 'car_add_response_model.g.dart';

@freezed
class CarAddResponseModel with _$CarAddResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CarAddResponseModel({
    int? id,
    String? name,
    String? image,
    int? carTypeId,
    int? carModelId,
    int? connectorTypeId,
    int? userId,
    String? createdAt,
    String? updatedAt,
  }) = _CarAddResponseModel;

  factory CarAddResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarAddResponseModelFromJson(json);
}
