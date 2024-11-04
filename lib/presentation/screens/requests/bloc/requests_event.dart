part of 'requests_bloc.dart';

@freezed
class RequestsEvent with _$RequestsEvent {
  const factory RequestsEvent.selectRequestState(SegmentOption selectedOption) = _SelectRequestState;
}