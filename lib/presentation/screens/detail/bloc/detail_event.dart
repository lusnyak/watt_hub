part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.loadDetail() = _LoadDetailEvent;

  const factory DetailEvent.daySelected(DateTime selectedDate) =
      _DaySelectedEvent;

  const factory DetailEvent.timeSelected(String selectedTime) =
      _TimeSelectedEvent;

  const factory DetailEvent.durationSelected(int selectedDuration) =
      _DurationSelectedEvent;

  const factory DetailEvent.connectorTypeSelected(
      ConnectorTypeModel selectedConnectorType) = _ConnectorTypeSelectedEvent;
}
