import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:watt_hub/data/fake_data/stations_data/stations_map.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/domain/models/station/station_model.dart';
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
    on<LoadStationEvent>(_onLoadStation);
    on<ToggleViewEvent>(_onToggleView);
    on<CenterLocationEvent>(_onCenterLocation);
    on<CenterOnStationEvent>(_onCenterOnStation);
    on<LoadFiltersEvent>(_onLoadFilters);
  }

  Future<void> _initializeLocation() async {
    final location = await _locationManager.getCurrentLocation();
    if (location != null) {
      currentLocation = location;
      if (isMapReady) {
        mapController.move(location, 18.0);
      }
    }
  }

  Future<void> _onLoadStation(
    LoadStationEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    try {
      await _initializeLocation();
      await Future.delayed(const Duration(seconds: 1));

      final stations = stationsData
          .map((stationJson) => StationModel.fromJson(stationJson))
          .toList();

      final selectedConnectorId =
          SharedPreferencesService.instance.selectedFilterConnectorId();
      final selectedCarId =
          SharedPreferencesService.instance.selectedFilterCarId();
      final rating = SharedPreferencesService.instance.filterRating();

      emit(HomeState.loaded(
        stations,
        isList: isList,
        selectedConnectorId: selectedConnectorId,
        selectedCarId: selectedCarId,
        rating: rating,
      ));
    } catch (e) {
      emit(const HomeState.error("Failed to load stations"));
    }
  }

  Future<void> _onLoadFilters(
    LoadFiltersEvent event,
    Emitter<HomeState> emit,
  ) async {
    final selectedConnectorId =
        SharedPreferencesService.instance.selectedFilterConnectorId();
    final selectedCarId =
        SharedPreferencesService.instance.selectedFilterCarId();
    final rating = SharedPreferencesService.instance.filterRating();

    if (state is LoadedState) {
      final loadedState = state as LoadedState;
      emit(loadedState.copyWith(
        selectedConnectorId: selectedConnectorId,
        selectedCarId: selectedCarId,
        rating: rating,
      ));
    }
  }

  void _onToggleView(ToggleViewEvent event, Emitter<HomeState> emit) {
    isList = !isList;
    if (state is LoadedState) {
      final loadedState = state as LoadedState;
      emit(HomeState.loaded(loadedState.stations, isList: isList));
    } else {
      emit(HomeState.viewChanged(isList));
    }
  }

  void _onCenterLocation(CenterLocationEvent event, Emitter<HomeState> emit) {
    if (currentLocation != null) {
      mapController.move(currentLocation!, 18.0);
    }
  }

  void _onCenterOnStation(
    CenterOnStationEvent event,
    Emitter<HomeState> emit,
  ) {
    isList = true;
    final stationLocation = LatLng(
      event.station.latitude,
      event.station.longitude,
    );

    mapController.move(stationLocation, 18.0);

    final stations = stationsData
        .map((stationJson) => StationModel.fromJson(stationJson))
        .toList();

    emit(HomeState.loaded(stations, isList: isList));
  }
}
