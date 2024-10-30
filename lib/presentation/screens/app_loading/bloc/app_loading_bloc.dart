import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/shared_preferences/shared_preferences_service.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/repository/user_repository.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'app_loading_event.dart';
part 'app_loading_state.dart';
part 'app_loading_bloc.freezed.dart';

@injectable
class AppLoadingBloc extends Bloc<AppLoadingEvent, AppLoadingState> {
  late final StreamSubscription<List<ConnectivityResult>>
      connectivitySubscription;

  AppLoadingBloc() : super(const AppLoadingState.initial()) {
    on<GetUserEvent>(onGetUser);
    connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((result) async {
      bool hasConnection = await getIt<ConnectivityChecker>().hasConnection();
      if (!hasConnection) {
        // ignore: invalid_use_of_visible_for_testing_member
        emit(const AppLoadingState.success(null));
        add(const GetUserEvent());
      }
    });
  }

  Future<void> onGetUser(
      GetUserEvent event, Emitter<AppLoadingState> emit) async {
    emit(const AppLoadingState.loading());
    final tokenMdl = await getIt<TokenStorage>().readToken();

    if (tokenMdl == null) {
      bool isOnBoard = SharedPreferencesService.instance.onBoardingLaunch();
      if (!isOnBoard) {
        emit(const AppLoadingState.loadToOnboarding());
      } else {
        emit(const AppLoadingState.loadToHome());
      }
    } else {
      bool hasConnection = await getIt<ConnectivityChecker>().hasConnection();
      if (!hasConnection) {
        try {
          if (tokenMdl.token!.isNotEmpty) {
            final UserModel? userData = await getIt<UserRepository>().getMe();
            emit(AppLoadingState.success(userData));
          } else {
            emit(const AppLoadingState.error('Something Error'));
          }
        } catch (e) {
          emit(AppLoadingState.error(e.toString()));
        }
      } else {
        emit(const AppLoadingState.connectionError(
            'No internet connection. Please check your connectivity.'));
      }
    }
  }
}
