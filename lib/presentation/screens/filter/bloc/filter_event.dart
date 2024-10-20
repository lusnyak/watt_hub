part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.started() = _Started;
  const factory FilterEvent.sliderValueChanged(double newValue) =
      _SliderValueChanged;
  const factory FilterEvent.carTypeChanged(CarTypeModel? selectedCar) =
      _CarTypeChanged;
  const factory FilterEvent.connectorTypeChanged(
      ConnectorTypeModel? selectedConnector) = _ConnectorTypeChanged;
  const factory FilterEvent.applyFilters() = _ApplyFilters;
}
