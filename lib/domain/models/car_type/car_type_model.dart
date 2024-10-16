import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/utils/helpers/helpers.dart';

part 'car_type_model.freezed.dart';
part 'car_type_model.g.dart';

@freezed
class CarTypeModel with _$CarTypeModel implements Identifiable {
  const factory CarTypeModel({
    required int id,
    required String title,
  }) = _CarTypeModel;

  factory CarTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CarTypeModelFromJson(json);
}
