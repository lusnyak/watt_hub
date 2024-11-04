part of 'requests_bloc.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState.initial() = _Initial;
  const factory RequestsState.selectedState({required SegmentOption selectedOption}) = _RequestsState;
}
