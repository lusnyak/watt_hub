part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _InitialState;
  const factory FilterState.loading() = _LoadingState;
  const factory FilterState.error(String message) = _ErrorState;
  const factory FilterState.loaded(List<ConnectorTypeModel> connectors,
      {@Default(1) double currentSliderValue}) = _LoadedState;
}
