import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:watt_hub/data/remote/user_remote/user_remote.dart';
import 'package:watt_hub/domain/body_requests_model/edit_user/edit_user_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

@lazySingleton
class UserRepository {
  Future<UserModel?> getMe() async {
    return await getIt<UserRemoteApi>().usersMe().catchError((_) async {
      await getIt<TokenStorage>().deleteToken();
      return null;
    });
  }

  Future<bool> edit(int id, EditUserModel? editData) {
    return getIt<UserRemoteApi>().edit(id, editData).then((response) {
      debugPrint('Response: $response');
      return true;
    }).catchError((error) {
      return false;
    });
  }
}
