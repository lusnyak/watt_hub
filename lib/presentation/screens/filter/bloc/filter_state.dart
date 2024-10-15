part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _InitialState;
  const factory FilterState.loading() = _LoadingState;
  const factory FilterState.error(String message) = _ErrorState;
  const factory FilterState.loaded(
    List<ConnectorTypeModel> connectors,
    List<CarTypeModel> cars, {
    required double currentSliderValue,
    CarTypeModel? selectedCar,
    ConnectorTypeModel? selectedConnector,
  }) = _LoadedState;
}
