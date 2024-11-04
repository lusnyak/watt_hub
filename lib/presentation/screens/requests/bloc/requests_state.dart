part of 'requests_bloc.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState.initial() = _Initial;
  const factory RequestsState.loading() = _LoadingState;
  const factory RequestsState.error(String message) = _ErrorState;
  const factory RequestsState.loaded({
    @Default(SegmentOption.my) SegmentOption selectedOption,
    @Default([]) List<OrderModel> myRequests,
    @Default([]) List<OrderModel> stationRequests,
  }) = _LoadedState;
}
