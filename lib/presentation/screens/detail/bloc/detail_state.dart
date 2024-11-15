part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required DateTime? selectedDay,
    required String selectedTime,
    required String selectedDuration,
    required ConnectorTypeModel? selectedConnectorType,
    required TextEditingController timeController, // TextEditingController բլոկի մեջ
  }) = _DetailState;

  factory DetailState.initial() => DetailState(
    selectedDay: null,
    selectedTime: '',
    selectedDuration: '',
    selectedConnectorType: null,
    timeController: TextEditingController(), // Ինիցիալիզացնել այստեղ
  );
}
