part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.startedEvent() = _StartedEvent;
  const factory FilterEvent.sliderValueChangedEvent(double newValue) =
      _SliderValueChangedEvent;
  const factory FilterEvent.carTypeChangedEvent(CarTypeModel? selectedCar) =
      _CarTypeChangedEvent;
  const factory FilterEvent.connectorTypeChangedEvent(
      ConnectorTypeModel? selectedConnector) = _ConnectorTypeChangedEvent;
  const factory FilterEvent.applyFiltersEvent() = _ApplyFiltersEvent;
}
