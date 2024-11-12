import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/repository/user_repository.dart';

part 'app_loading_event.dart';

part 'app_loading_state.dart';

part 'app_loading_bloc.freezed.dart';

@injectable
class AppLoadingBloc extends Bloc<AppLoadingEvent, AppLoadingState> {
  AppLoadingBloc() : super(const AppLoadingState.initial()) {
    on<_InitEvent>(_init);
    on<_CheckTokenValidationEvent>(_checkTokenValidation);
    on<_CheckInternetConnectionEvent>(_checkedInternetConnection);
    on<_NotifyConnectionStatusEvent>(_notifyConnectionStatus);
    on<_ObserverConnectionEvent>(_observeConnection);
  }

  Future<void> _init(
    event,
    emit,
  ) async {
    emit(const AppLoadingState.loading());
    add(const AppLoadingEvent.checkTokenValidation());
    FlutterNativeSplash.remove();
  }

  Future<void> _checkedInternetConnection(
    event,
    emit,
  ) async {
    emit(const AppLoadingState.loading());
    await ConnectivityChecker().checkConnectivity().then((connected) {
      debugPrint(connected.toString());
      add(AppLoadingEvent.notifyConnectionStatus(isConnected: connected));
    });
  }

  void _observeConnection(
    event,
    emit,
  ) {
    ConnectivityChecker().observeConnection(
      success: () {
        add(const AppLoadingEvent.notifyConnectionStatus(isConnected: true));
      },
      failed: () {
        add(const AppLoadingEvent.notifyConnectionStatus(isConnected: false));
      },
    );
  }

  Future<void> _notifyConnectionStatus(
    event,
    emit,
  ) async {
    if(event.isConnected) {
      await getUserData(emit);
    } else {
      emit(const AppLoadingState.noConnection());
    }
  }

  Future<void> getUserData(emit) async {
    await getIt<UserRepository>().getMe().then((onValue) {
      if (onValue != null) {
        emit(const AppLoadingState.loadToHome());
      } else {
        emit(const AppLoadingState.loadToSignIn());
      }
    });
  }

  Future<void> _checkTokenValidation(event, emit) async {
    emit(const AppLoadingState.loading());

    final tokenMdl = await getIt<TokenStorage>().readToken();

    if (tokenMdl?.token != null && tokenMdl!.token!.isNotEmpty) {
      add(const AppLoadingEvent.checkInternetConnection());
    } else {
      bool isOnBoard = SharedPreferencesService.instance.onBoardingLaunch();
      if (!isOnBoard) {
        emit(const AppLoadingState.loadToOnboarding());
      } else {
        emit(const AppLoadingState.loadToSignIn());
      }
    }
  }
}
