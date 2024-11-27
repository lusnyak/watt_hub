import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_type_model.freezed.dart';
part 'car_type_model.g.dart';

@freezed
class CarTypeModel with _$CarTypeModel {
  const factory CarTypeModel({
    int? id,
    String? title,
  }) = _CarTypeModel;

  factory CarTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CarTypeModelFromJson(json);
}
