part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadStationEvent() = LoadStationEvent;
  const factory HomeEvent.toggleViewEventEvent(LatLng? currentLocation) = ToggleViewEvent;
  const factory HomeEvent.centerLocationEvent(currentLocation) = CenterLocationEvent;
  const factory HomeEvent.centerOnStation(StationModel station, LatLng? currentLocation) = CenterOnStationEvent;
  const factory HomeEvent.loadFiltersEvent() = LoadFiltersEvent;
}
