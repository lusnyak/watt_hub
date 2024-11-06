part of 'add_station_bloc.dart';

@freezed
class AddStationEvent with _$AddStationEvent {
  const factory AddStationEvent.started() = _StartedEvent;
  const factory AddStationEvent.imagesSelected(List<File> images) = _ImagesSelectedEvent;
  const factory AddStationEvent.removeImage(int index) = _RemoveImageEvent;
  const factory AddStationEvent.connectorTypeChangedEvent(
      ConnectorTypeModel? selectedConnector) = _ConnectorTypeChangedEvent;
  const factory AddStationEvent.startTimeSelected(String startTime) = _StartTimeSelectedEvent;
  const factory AddStationEvent.endTimeSelected(String endTime) = _EndTimeSelectedEvent;
  const factory AddStationEvent.getAddress(String address) = _GetAddressEvent;
  const factory AddStationEvent.createStation() = _CreateStationEvent;
  const factory AddStationEvent.connectorMultiTypeChangedEvent(ConnectorTypeModel selected ) = _ConnectorMultiTypeChangedEvent;
  const factory AddStationEvent.deleteSelectedConnector({required ConnectorTypeModel connector}) = _DeleteSelectedConnector;
}

