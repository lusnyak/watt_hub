import 'package:watt_hub/domain/models/car_type/car_type_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

class FilterModel {
  const FilterModel({
    required this.connector,
    required this.car,
    required this.rating,
  });

  final ConnectorTypeModel connector;
  final CarTypeModel car;
  final double rating;
}
