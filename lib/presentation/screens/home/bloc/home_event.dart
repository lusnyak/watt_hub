part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadStationEvent() = _LoadStationEvent;
  const factory HomeEvent.toggleViewEvent(LatLng? currentLocation) = _ToggleViewEvent;
  const factory HomeEvent.centerLocationEvent(currentLocation) = _CenterLocationEvent;
  const factory HomeEvent.centerOnStation(StationModel station, LatLng? currentLocation) = _CenterOnStationEvent;
  const factory HomeEvent.loadFiltersEvent() = _LoadFiltersEvent;
}
