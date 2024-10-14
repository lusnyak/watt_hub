part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = InitialState;
  const factory HomeState.loading() = LoadingState;
  const factory HomeState.error(String message) = ErrorState;
  const factory HomeState.viewChanged(bool isList) = ViewChangedState;
  const factory HomeState.loaded(List<ChargingStationModel> stations, {required bool isList}) = LoadedState;
}
