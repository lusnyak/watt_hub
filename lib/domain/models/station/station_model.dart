import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  const factory StationModel({
    required int id,
    required double latitude,
    required double longitude,
    required DateTime startTime,
    required DateTime endTime,
    required ConnectorTypeModel connectorType,
    required int hourlyRate,
    required int kwt,
    required String phoneNumber,
    required String name,
    required List<String> image,
    required String address,
    required List<String> reviews,
    required double averageRate,
    required UserModel user,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
