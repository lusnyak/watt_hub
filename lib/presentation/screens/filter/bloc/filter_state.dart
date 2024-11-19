part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _InitialState;
  const factory FilterState.loading() = _LoadingState;
  const factory FilterState.error(String message) = FilterErrorState;
  const factory FilterState.loaded(
    List<ConnectorTypeModel> connectors,
    List<CarTypeModel> cars,
    FilterModel? filterData,
  ) = _LoadedState;
}
