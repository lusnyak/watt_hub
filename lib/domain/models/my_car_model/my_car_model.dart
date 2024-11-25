import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/car_model_type/car_model_type_model.dart';
import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'my_car_model.freezed.dart';
part 'my_car_model.g.dart';

@freezed
class MyCarModel with _$MyCarModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MyCarModel({
    required int id,
    required String name,
    required int carTypeId,
    required int carModelId,
    required int connectorTypeId,
    required int userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required UserModel user,

    required CarTypeModel carType,
    required ConnectorTypeModel connectorType,
    required CarModelTypeModel carModel,
    required String images,

  }) = _CarModel;

  factory MyCarModel.fromJson(Map<String, dynamic> json) =>
      _$MyCarModelFromJson(json);
}
