import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model_type_model.freezed.dart';
part 'car_model_type_model.g.dart';

@freezed
class CarModelTypeModel with _$CarModelTypeModel {
  const factory CarModelTypeModel({
    required int id,
    required String title,
  }) = _CarModelTypeModel;

  factory CarModelTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelTypeModelFromJson(json);
}
