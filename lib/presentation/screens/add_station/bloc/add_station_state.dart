part of 'add_station_bloc.dart';

@freezed
class AddStationState with _$AddStationState {
  const factory AddStationState.initial() = _InitialState;

  const factory AddStationState.loading() = _LoadingState;

  const factory AddStationState.error(String message) = _ErrorState;

  const factory AddStationState.loaded(

      List<ConnectorTypeModel> connectors,
      bool isSelected,
      {
        ConnectorTypeModel? selectedConnectors,
        @Default([]) List<ConnectorTypeModel> selectedList,
        ConnectorTypeModel? selected,
        int? initialSelectedConnectorId,
        List<File>? images,
        String? startTime,
        String? endTime,
        String? address,
      }) = _LoadedState;
}