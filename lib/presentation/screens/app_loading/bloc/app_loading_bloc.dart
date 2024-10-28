import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/repository/user_repository.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'app_loading_event.dart';
part 'app_loading_state.dart';
part 'app_loading_bloc.freezed.dart';

@injectable
class AppLoadingBloc extends Bloc<AppLoadingEvent, AppLoadingState> {
  AppLoadingBloc() : super(const AppLoadingState.initial()) {
    on<GetUserEvent>(onGetUser);
  }

  Future<void> onGetUser(
      GetUserEvent event, Emitter<AppLoadingState> emit) async {
    emit(const AppLoadingState.loading());
    try {
      final tokenMdl = await getIt<TokenStorage>().readToken();

      if (tokenMdl != null && tokenMdl.token!.isNotEmpty) {
        final UserModel? userData = await getIt<UserRepository>().getMe();
        emit(AppLoadingState.success(userData));
      } else {
        emit(const AppLoadingState.error('Something Error'));
      }
    } catch (e) {
      emit(AppLoadingState.error(e.toString()));
    }
  }
}
