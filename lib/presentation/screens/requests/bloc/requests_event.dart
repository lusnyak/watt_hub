part of 'requests_bloc.dart';

@freezed
class RequestsEvent with _$RequestsEvent {
  const factory RequestsEvent.loadMyRequests(SegmentOption selectedOption) =
      _LoadMyRequestsEvent;
}
