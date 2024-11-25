part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.loading() = _DetailLoadingState;
  const factory DetailState.loaded({
     DateTime? selectedDate,
     String? selectedTime,
     int? selectedDuration,
    ConnectorTypeModel? selectedConnectorType,
    List<ConnectorTypeModel>? connectorTypes,
  }) = _DetailLoadedState;

  const factory DetailState.error(String error) = _DetailErrorState;
}
