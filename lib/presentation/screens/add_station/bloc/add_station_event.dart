part of 'add_station_bloc.dart';

@freezed
class AddStationEvent with _$AddStationEvent {
  const factory AddStationEvent.started() = _StartedEvent;

  const factory AddStationEvent.imagesSelected(List<File> images) =
      _ImagesSelectedEvent;

  const factory AddStationEvent.removeImage(int index) = _RemoveImageEvent;

  const factory AddStationEvent.connectorTypeChangedEvent(
      ConnectorTypeModel? selectedConnector) = _ConnectorTypeChangedEvent;

  const factory AddStationEvent.startTimeSelected(DateTime startTime) =
      _StartTimeSelectedEvent;

  const factory AddStationEvent.endTimeSelected(DateTime endTime) =
      _EndTimeSelectedEvent;

  const factory AddStationEvent.getAddress(String address,double latitude, double longitude) = _GetAddressEvent;

  const factory AddStationEvent.createStation() = _CreateStationEvent;

  const factory AddStationEvent.connectorMultiTypeChangedEvent(
      List<ConnectorTypeModel> selectedItems) = _ConnectorMultiTypeChangedEvent;

  const factory AddStationEvent.deleteSelectedConnector(
      {required ConnectorTypeModel connector}) = _DeleteSelectedConnector;
}
