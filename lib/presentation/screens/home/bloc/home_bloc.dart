import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/data/local/stations_data/stations_data.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<LoadStation>(_onLoadStation);
  }

  Future<void> _onLoadStation(
    LoadStation event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final stations = sampleChargingStations;
      emit(HomeState.loaded(stations));
    } catch (e) {
      emit(const HomeState.error("Failed to load stations"));
    }
  }
}
