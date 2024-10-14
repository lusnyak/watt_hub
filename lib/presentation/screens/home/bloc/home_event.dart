part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadStation() = LoadStation;
  const factory HomeEvent.toggleView() = ToggleView;
  const factory HomeEvent.centerLocation() = CenterLocation;
  const factory HomeEvent.centerOnStation(StationModel station) =
      CenterOnStation;
}
