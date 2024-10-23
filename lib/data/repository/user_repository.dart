import 'package:watt_hub/config/config.dart';

import '../remote/auth_remote/auth_remote.dart';



class UserRepository {

  UserRepository();

  Future<AuthResponse> registerUsers() async {
    return await getIt<AuthRemoteApi>().signInWithEmail(signInRequest);
  }
}