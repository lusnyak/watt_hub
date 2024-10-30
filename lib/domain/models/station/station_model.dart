import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/review/review_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  const factory StationModel({
    required int id,
    required double latitude,
    required double longitude,
    DateTime? startTime,
    DateTime? endTime,
    List<ConnectorTypeModel>? connectorType,
    int? hourlyRate,
    int? kwt,
    String? phoneNumber,
    String? name,
    @Default([]) List<String> image,
    String? address,
    @Default([]) List<ReviewModel> reviews,
    double? averageRate,
    UserModel? user,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
