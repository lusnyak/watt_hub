import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

import '../remote/auth_remote/auth_remote.dart';

@injectable
class UserRepository {
  UserRepository();

  Future<TokenModel?> userConnect(String email) async {
    return await getIt<AuthRemoteApi>().otp(email);
  }
}
