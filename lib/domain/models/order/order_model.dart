import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    @JsonKey(name: 'order_time') DateTime? orderTime,
    @JsonKey(name: 'expected_hour') double? expectedHour,
    @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
    String? comment,
    UserModel? creator,
    String? status,
    @JsonKey(name: 'station') StationModel? station,
    String? reason,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

