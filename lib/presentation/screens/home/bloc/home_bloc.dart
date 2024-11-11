import 'package:flutter/material.dart';
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
    on<_LoadStationEvent>(_onLoadStation);
    on<_ToggleViewEvent>(_onToggleView);
    on<_CenterLocationEvent>(_onCenterLocation);
    on<_CenterOnStationEvent>(_onCenterOnStation);
    on<_LoadFiltersEvent>(_onLoadFilters);
  }

  Future<LatLng?> _initializeLocation() async {
    final location = await _locationManager.getCurrentLocation();
    if (location != null) {
      return location;
    }
    return null;
  }

  Future<void> _onLoadStation(event, emit) async {
    emit(const HomeState.loading());
    try {
      final location = await _initializeLocation();

      final stations = stationsData
          .map((stationJson) => StationModel.fromJson(stationJson))
          .toList();

      debugPrint('$stations, stations');

      emit(HomeState.loaded(
        stations,
        isList: true,
        currentLocation: location,
      ));
    } catch (e) {
      emit(HomeState.error("Failed to load stations - $e"));
    }
  }

  Future<void> _onLoadFilters(event, emit) async {}

  void _onToggleView(event, emit) {
    if (state is LoadedState) {
      final loadedState = state as LoadedState;
      emit(HomeState.loaded(loadedState.stations,
          isList: !loadedState.isList, currentLocation: event.currentLocation));
    } else {
      emit(const HomeState.viewChanged(true));
    }
  }

  void _onCenterLocation(event, emit) async {
    final location = event.currentLocation;
    if (location != null) {
      mapController.move(location, 18.0);
    }
  }

  void _onCenterOnStation(event, emit) {
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
