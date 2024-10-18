part of 'add_station_bloc.dart';

@freezed
class AddStationState with _$AddStationState {
  const factory AddStationState.initial() = _InitialState;
  const factory AddStationState.loading() = _LoadingState;
  const factory AddStationState.error(String message) = _ErrorState;
  const factory AddStationState.loaded({List<File>? images}) = _LoadedState;

}