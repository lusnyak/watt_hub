part of 'detail_bloc.dart';
abstract class DetailEvent {}

class DaySelected extends DetailEvent {
  final DateTime selectedDate;
  DaySelected(this.selectedDate);
}

class TimeSelected extends DetailEvent {
  final String selectedTime;
  TimeSelected(this.selectedTime);
}

class DurationSelected extends DetailEvent {
  final String duration;
  DurationSelected(this.duration);
}

class ConnectorTypeSelected extends DetailEvent {
  final ConnectorTypeModel connectorType;
  ConnectorTypeSelected(this.connectorType);
}
