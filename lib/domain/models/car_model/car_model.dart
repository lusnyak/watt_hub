import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/car_model_type/car_model_type_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel with _$CarModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CarModel({
    required int id,
    required CarTypeModel carType,
    required ConnectorTypeModel connectorType,
    required UserModel user,
    required CarModelTypeModel carModel,
    required List<String> images,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
