import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

import '../remote/auth_remote/auth_remote.dart';

@injectable
class UserRepository {
  UserRepository();

  Future<TokenModel?> userConnect(String email) async {
    return await getIt<AuthRemoteApi>().otp(email);
  }

  Future<bool> userVerification(
    String? otp,
    String? token,
  ) async {
    return await getIt<AuthRemoteApi>().checkOtp(otp, token).then((onValue) {
      debugPrint("${onValue?.token} checkOtp then");

      /// Token storage pahel
      return onValue?.token != null;
    }).catchError((e) {
      debugPrint("${e.toString()} e.toString()");
      return false;
    });
  }
}
