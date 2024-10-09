import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';

abstract class ChargingStationState {}

class ChargingStationInitial extends ChargingStationState {}

class ChargingStationLoading extends ChargingStationState {}

class ChargingStationLoaded extends ChargingStationState {
  final List<ChargingStationModel> chargingStations;

  ChargingStationLoaded(this.chargingStations);
}

class ChargingStationError extends ChargingStationState {
  final String message;

  ChargingStationError(this.message);
}
