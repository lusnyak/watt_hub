import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/data/fake_data/stations_data/stations_map.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
import 'package:watt_hub/utils/helpers/location_helper.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LocationManager _locationManager = LocationManager();
  final MapController mapController = MapController();

  HomeBloc() : super(const HomeState.initial()) {
    on<LoadStationEvent>(_onLoadStation);
    on<ToggleViewEvent>(_onToggleView);
    on<CenterLocationEvent>(_onCenterLocation);
    on<CenterOnStationEvent>(_onCenterOnStation);
    on<LoadFiltersEvent>(_onLoadFilters);
  }

  Future<LatLng?> _initializeLocation() async {
    final location = await _locationManager.getCurrentLocation();
    if (location != null) {
      return location;
    }
    return null;
  }

  Future<void> _onLoadStation(
    LoadStationEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    try {
      final location = await _initializeLocation();
      await Future.delayed(const Duration(seconds: 1));

      final stations = stationsData
          .map((stationJson) => StationModel.fromJson(stationJson))
          .toList();

      emit(HomeState.loaded(
        stations,
        isList: true,
        currentLocation: location,
      ));
    } catch (e) {
      emit(const HomeState.error("Failed to load stations"));
    }
  }

  Future<void> _onLoadFilters(
    LoadFiltersEvent event,
    Emitter<HomeState> emit,
  ) async {}

  void _onToggleView(ToggleViewEvent event, Emitter<HomeState> emit) {
    if (state is LoadedState) {
      final loadedState = state as LoadedState;
      emit(HomeState.loaded(loadedState.stations, isList: !loadedState.isList, currentLocation: event.currentLocation));
    } else {
      emit(const HomeState.viewChanged(true));
    }
  }

  void _onCenterLocation(
      CenterLocationEvent event, Emitter<HomeState> emit) async {
    final location = event.currentLocation;
    if (location != null) {
      mapController.move(location, 18.0);
    }
  }

  void _onCenterOnStation(
    CenterOnStationEvent event,
    Emitter<HomeState> emit,
  ) {
    final stationLocation = LatLng(
      event.station.latitude,
      event.station.longitude,
    );

    mapController.move(stationLocation, 18.0);

    final stations = stationsData
        .map((stationJson) => StationModel.fromJson(stationJson))
        .toList();

    emit(HomeState.loaded(stations, currentLocation: event.currentLocation));
  }
}
