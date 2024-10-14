import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
// import 'package:watt_hub/data/fake_data/stations_map.dart';
import 'package:watt_hub/data/local/stations_data/stations_data.dart';
import 'package:watt_hub/domain/models/charging_station/charging_station_model.dart';
import 'package:watt_hub/utils/helpers/location_helper.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LocationManager _locationManager = LocationManager();
  final MapController mapController = MapController();

  LatLng? currentLocation;
  bool isMapReady = false;
  bool isList = true;

  HomeBloc() : super(const HomeState.initial()) {
    on<LoadStation>(_onLoadStation);
    on<ToggleView>(_onToggleView);
    on<CenterLocation>(_onCenterLocation);
    on<CenterOnStation>((event, emit) {
      centerOnStation(event.station);
    });
  }

  Future<void> _initializeLocation() async {
    debugPrint('_initializeLocation');
    final location = await _locationManager.getCurrentLocation();
    if (location != null) {
      currentLocation = location;
      if (isMapReady) {
        mapController.move(location, 18.0);
      }
    }
  }

  Future<void> _onLoadStation(
    LoadStation event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    try {
      await _initializeLocation();
      await Future.delayed(const Duration(seconds: 1));
      debugPrint('Loading stations...');

      final stations = sampleChargingStations;
      emit(HomeState.loaded(stations, isList: isList));
      debugPrint('Loaded ${stations.length} stations');
    } catch (e) {
      debugPrint('Error loading stations: $e');
      emit(const HomeState.error("Failed to load stations"));
    }
  }

  void _onToggleView(ToggleView event, Emitter<HomeState> emit) {
    isList = !isList;
    if (state is LoadedState) {
      final loadedState = state as LoadedState;
      emit(HomeState.loaded(loadedState.stations, isList: isList));
    } else {
      emit(HomeState.viewChanged(isList));
    }
  }

  void _onCenterLocation(CenterLocation event, Emitter<HomeState> emit) {
    if (currentLocation != null) {
      mapController.move(currentLocation!, 18.0);
    }
  }

  void centerOnStation(ChargingStationModel station) {
    final stationLocation = LatLng(station.latitude, station.longitude);
    mapController.move(stationLocation, 18.0);
  }
}
