import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_station_model.freezed.dart';

part 'add_station_model.g.dart';

@freezed
class AddStationModel with _$AddStationModel {
  /// TODO: - usumnasirel hetevyal toxy - done
  @JsonSerializable(fieldRename: FieldRename.snake)

  /// -----
  const factory AddStationModel({
    required String lat,
    required String lng,
    required DateTime startTime,
    required DateTime endTime,
    required int connectorTypeId,
    required num hourlyRate,
    String? phoneNumber,
    String? name,
    required String address,
    required int userId,
  }) = _AddStationModel;

  factory AddStationModel.fromJson(Map<String, dynamic> json) =>
      _$AddStationModelFromJson(json);
}
