import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/review/review_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'station_model.freezed.dart';

part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StationModel({
    required int id,
    required double latitude,
    required double longitude,
    DateTime? startTime,
    DateTime? endTime,
    List<ConnectorTypeModel>? connectorType,
    num? hourlyRate,
    num? kwt,
    String? phoneNumber,
    String? name,
    List<String>? image,
    String? address,
    List<ReviewModel>? reviews,
    double? averageRate,
    UserModel? user,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
