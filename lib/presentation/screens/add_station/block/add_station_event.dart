part of 'add_station_block.dart';

@freezed
class AddStationEvent with _$AddStationEvent {
  const factory AddStationEvent.started() = _Started;
}