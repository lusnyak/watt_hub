import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'charging_station_model.freezed.dart';
part 'charging_station_model.g.dart';

@freezed
class ChargingStationModel with _$ChargingStationModel {
  const factory ChargingStationModel({
    required int id,
    required double latitude,
    required double longitude,
    required DateTime startTime,
    required DateTime endTime,
    required ConnectorTypeModel connectorType, // Use the ConnectorType model
    required int hourlyRate, // Changed to int
    required int kwt, // Changed to int
    required String phoneNumber,
    required String name,
    required List<String> image, // Changed to List<String>
    required String address,
    required List<String> reviews,
    required double averageRate,
    required UserModel user, // Use the User model
  }) = _ChargingStationModel;

  factory ChargingStationModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingStationModelFromJson(json);
}
