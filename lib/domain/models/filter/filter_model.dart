import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

class FilterModel {
  FilterModel({
    this.connector,
    this.car,
    this.rating,
  });

  ConnectorTypeModel? connector;
  CarTypeModel? car;
  double? rating;
}
