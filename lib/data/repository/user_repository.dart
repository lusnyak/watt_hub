import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/user_remote/user_remote.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

@lazySingleton
class UserRepository {
  Future<UserModel?> getMe() async {
    return await getIt<UserRemoteApi>().usersMe();
  }
}
