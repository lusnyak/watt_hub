import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReviewModel({
    int? id,
    int? rate,
    String? message,
    UserModel? user,
    StationModel? station,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
