import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason_model.freezed.dart';
part 'reason_model.g.dart';

@freezed
class ReasonModel with _$ReasonModel {
  const factory ReasonModel({
    required int id,
    String? message,
    int? order,
  }) = _ReasonModel;

  factory ReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ReasonModelFromJson(json);
}
