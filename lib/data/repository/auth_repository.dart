import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/remote/auth_remote/auth_remote.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

@lazySingleton
class AuthRepository {
  Future<TokenModel?> userConnect(String? email) async {
    return await getIt<AuthRemoteApi>().otp(email);
  }

  Future<bool> userVerification(
    String? otp,
    String? token,
  ) async {
    return await getIt<AuthRemoteApi>()
        .checkOtp(otp, token)
        .then((onValue) async {
      if (onValue != null) {
        await getIt<TokenStorage>().saveToken(onValue);
      }
      return onValue?.token != null;
    }).catchError((e) {
      return false;
    });
  }
}
