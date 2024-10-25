part of 'add_station_bloc.dart';

@freezed
class AddStationEvent with _$AddStationEvent {
  const factory AddStationEvent.started() = _StartedEvent;
  const factory AddStationEvent.imagesSelected(List<File> images) = _ImagesSelectedEvent;
  const factory AddStationEvent.removeImage(int index) = _RemoveImageEvent;
}