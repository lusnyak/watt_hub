part of 'app_loading_bloc.dart';

@freezed
class AppLoadingEvent with _$AppLoadingEvent {
const factory AppLoadingEvent.init() = _InitEvent;
  const factory AppLoadingEvent.checkTokenValidation() = _CheckTokenValidationEvent;
  const factory AppLoadingEvent.checkInternetConnection() = _CheckInternetConnectionEvent;
  const factory AppLoadingEvent.observerConnection() = _ObserverConnectionEvent;
  const factory AppLoadingEvent.notifyConnectionStatus({required bool isConnected}) = _NotifyConnectionStatusEvent;
}
