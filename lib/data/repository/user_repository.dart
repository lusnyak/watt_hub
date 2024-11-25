import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/remote/user_remote/user_remote.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

@lazySingleton
class UserRepository {
  Future<UserModel?> getMe() async {
    return await getIt<UserRemoteApi>().usersMe().catchError((_) async {
      await getIt<TokenStorage>().deleteToken();
      return null;
    });
  }

  Future<bool> edit(int id, String? fullName, String? phoneNumber) {
    return getIt<UserRemoteApi>()
        .edit(id, fullName, phoneNumber)
        .then((response) {
      return response.statusCode == 200 || response.statusCode == 204;
    }).catchError((error) {
      return false;
    });
  }
}
