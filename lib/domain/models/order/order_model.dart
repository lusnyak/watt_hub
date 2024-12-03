import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/domain/enums/order_status/order_status_enum.dart';
import 'package:watt_hub/domain/models/car_model/car_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    UserModel? creator,
    CarModel? car,
    @JsonKey(name: 'station') StationModel? station,
    @JsonKey(name: 'status') OrderStatus? status,
    double? price,
    @JsonKey(name: 'order_time') DateTime? orderTime,
    @JsonKey(name: 'expected_hour') double? expectedHour,
    String? comment,
    String? reason,
    @JsonKey(name: 'connector_type') ConnectorTypeModel? connectorType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
