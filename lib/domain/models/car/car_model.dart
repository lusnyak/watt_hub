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
    CarTypeModel? carType,
    ConnectorTypeModel? connectorType,
    List<String>? images,
    UserModel? user,
    String? title,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
