part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initialState() = _InitialState;
  const factory FilterState.loadingState() = _LoadingState;
  const factory FilterState.errorState(String message) = _ErrorState;
  const factory FilterState.loadedState(
    List<ConnectorTypeModel> connectors,
    List<CarTypeModel> cars, {
    double? ratingValue,
    CarTypeModel? selectedCar,
    ConnectorTypeModel? selectedConnector,
  }) = _LoadedState;
}
