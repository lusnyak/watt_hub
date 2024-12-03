import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/order/order_model.dart';
import 'package:watt_hub/domain/models/review/review_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'station_model.freezed.dart';

part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StationModel({
    int? id,
    double? lat,
    double? lng,
    DateTime? startTime,
    DateTime? endTime,
    int? connectorTypeId,
    List<ConnectorTypeModel>? connectorTypes,
    String? hourlyRate, // Todo: Need to change double
    num? kwt,
    String? phoneNumber,
    String? name,
    String? address,
    String? image, // List<String>
    List<ReviewModel>? reviews,
    double? averageRate,
    int? userId,
    UserModel? user,
    List<OrderModel>? orders,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
