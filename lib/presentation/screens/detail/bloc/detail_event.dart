part of 'detail_bloc.dart';


@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.daySelected(DateTime selectedDate) = DaySelected;
  const factory DetailEvent.timeSelected(String selectedTime) = TimeSelected;
  const factory DetailEvent.durationSelected(String selectedDuration) = DurationSelected;
  const factory DetailEvent.connectorTypeSelected(ConnectorTypeModel selectedConnectorType) = ConnectorTypeSelected;
}

// abstract class DetailEvent {}
//
// class DaySelected extends DetailEvent {
//   final DateTime selectedDate;
//   DaySelected(this.selectedDate);
// }
//
// class TimeSelected extends DetailEvent {
//   final String selectedTime;
//   TimeSelected(this.selectedTime);
// }
//
// class DurationSelected extends DetailEvent {
//   final String duration;
//   DurationSelected(this.duration);
// }
//
// class ConnectorTypeSelected extends DetailEvent {
//   final ConnectorTypeModel connectorType;
//   ConnectorTypeSelected(this.connectorType);
// }
