import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_station_model.freezed.dart';
part 'add_station_model.g.dart';

@freezed
class AddStationModel with _$AddStationModel {
  const factory AddStationModel({
    required String lat,
    required String lng,
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') required DateTime endTime,
    @JsonKey(name: 'connector_type_id') required int connectorTypeId,
    @JsonKey(name: 'hourly_rate') required num hourlyRate,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? name,
    required String address,
    required List<String> image,
    @JsonKey(name: 'user_id') required int userId,
  }) = _AddStationModel;

  factory AddStationModel.fromJson(Map<String, dynamic> json) =>
      _$AddStationModelFromJson(json);
}
