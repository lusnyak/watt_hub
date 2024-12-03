import 'dart:io';
import 'package:watt_hub/domain/body_requests_model/add_station/add_station_model.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

class AddStationViewModel {
  final List<ConnectorTypeModel>? connectors;
  final ConnectorTypeModel? selectedConnector;
  final List<ConnectorTypeModel> selectedList;
  final ConnectorTypeModel? selected;
  final int? initialSelectedConnectorId;
  final List<File>? images;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? address;
  final double? latitude;
  final double? longitude;
  final AddStationModel? createStation;

  AddStationViewModel({
    this.connectors,
    this.selectedConnector,
    this.selectedList = const [],
    this.selected,
    this.initialSelectedConnectorId,
    this.images,
    this.startTime,
    this.endTime,
    this.address,
    this.latitude,
    this.longitude,
    this.createStation,
  });

  AddStationViewModel copyWith({
    List<ConnectorTypeModel>? connectors,
    ConnectorTypeModel? selectedConnector,
    List<ConnectorTypeModel>? selectedList,
    ConnectorTypeModel? selected,
    int? initialSelectedConnectorId,
    List<File>? images,
    DateTime? startTime,
    DateTime? endTime,
    String? address,
    double? latitude,
    double? longitude,
    AddStationModel? createStation,
  }) {
    return AddStationViewModel(
      connectors: connectors ?? this.connectors,
      selectedConnector: selectedConnector ?? this.selectedConnector,
      selectedList: selectedList ?? this.selectedList,
      selected: selected ?? this.selected,
      initialSelectedConnectorId:
      initialSelectedConnectorId ?? this.initialSelectedConnectorId,
      images: images ?? this.images,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createStation: createStation ?? this.createStation,
    );
  }
}
