import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/data/local/stations_data/stations_data.dart';
import 'charging_station_event.dart';
import 'charging_station_state.dart';

@injectable
class ChargingStationBloc
    extends Bloc<ChargingStationEvent, ChargingStationState> {
  ChargingStationBloc() : super(ChargingStationInitial()) {
    on<LoadChargingStations>(_onLoadChargingStations);
  }

  Future<void> _onLoadChargingStations(
    LoadChargingStations event,
    Emitter<ChargingStationState> emit,
  ) async {
    emit(ChargingStationLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final chargingStations = sampleChargingStations;
      emit(ChargingStationLoaded(chargingStations));
    } catch (e) {
      emit(ChargingStationError("Failed to load charging stations"));
    }
  }
}
