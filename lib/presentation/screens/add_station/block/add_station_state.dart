part of 'add_station_block.dart';

@freezed
class AddStationState with _$AddStationState {
  const factory AddStationState.initial() = _InitialState;
  const factory AddStationState.loading() = _LoadingState;
  const factory AddStationState.error(String message) = _ErrorState;
}