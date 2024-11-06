part of 'requests_bloc.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState.initial() = InitialState;
  const factory RequestsState.loading(
      {@Default(SegmentOption.my) SegmentOption selectedOption}) = LoadingState;
  const factory RequestsState.error(String message) = ErrorState;
  const factory RequestsState.loaded({
    @Default(SegmentOption.my) SegmentOption selectedOption,
    @Default([]) List<OrderModel> myRequests,
    @Default([]) List<OrderModel> stationRequests,
  }) = LoadedState;
}
