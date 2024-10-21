part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadStationEvent() = LoadStationEvent;
  const factory HomeEvent.toggleViewEventEvent() = ToggleViewEvent;
  const factory HomeEvent.centerLocationEvent() = CenterLocationEvent;
  const factory HomeEvent.centerOnStation(StationModel station) = CenterOnStationEvent;
  const factory HomeEvent.loadFiltersEvent() = LoadFiltersEvent;
}
