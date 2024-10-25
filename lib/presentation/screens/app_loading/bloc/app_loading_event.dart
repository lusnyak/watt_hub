part of 'app_loading_bloc.dart';

@freezed
class AppLoadingEvent with _$AppLoadingEvent {
  const factory AppLoadingEvent.getUser() = GetUserEvent;
}