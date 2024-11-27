import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel with _$CarModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CarModel({
    int? id,
    String? name,
    String? image,
    int? carTypeId,
    int? carModelId,
    int? userId,
    int? connectorTypeId,
    DateTime? createdAt,
    DateTime? updatedAt,
    UserModel? user,
    ConnectorTypeModel? connectorTypes,
    CarTypeModel? model,
    CarTypeModel? type,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
