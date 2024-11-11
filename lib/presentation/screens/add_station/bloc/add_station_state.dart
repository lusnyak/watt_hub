part of 'add_station_bloc.dart';

@freezed
class AddStationState with _$AddStationState {
  const factory AddStationState.initial() = _InitialState;

  const factory AddStationState.loading() = _LoadingState;

  const factory AddStationState.error(String message) = _ErrorState;

  const factory AddStationState.loaded(
    List<ConnectorTypeModel> connectors, {
    ConnectorTypeModel? selectedConnectors,
    @Default([]) List<ConnectorTypeModel> selectedList,
    ConnectorTypeModel? selected,
    int? initialSelectedConnectorId,
    List<File>? images,
    DateTime? startTime,
    DateTime? endTime,
    String? address,
    double? latitude,
    double? longitude,
  }) = _LoadedState;
}
