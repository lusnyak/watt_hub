part of 'detail_bloc.dart';

class DetailState {
  final DateTime? selectedDay;
  final String selectedTime;
  final String selectedDuration;
  final ConnectorTypeModel? selectedConnectorType;

  DetailState({
    this.selectedDay,
    this.selectedTime = '',
    this.selectedDuration = '',
    this.selectedConnectorType,
  });

  DetailState copyWith({
    DateTime? selectedDay,
    String? selectedTime,
    String? selectedDuration,
    ConnectorTypeModel? selectedConnectorType,
  }) {
    return DetailState(
      selectedDay: selectedDay ?? this.selectedDay,
      selectedTime: selectedTime ?? this.selectedTime,
      selectedDuration: selectedDuration ?? this.selectedDuration,
      selectedConnectorType: selectedConnectorType ?? this.selectedConnectorType,
    );
  }
}
