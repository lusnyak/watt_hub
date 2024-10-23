import 'dart:convert';

import 'package:watt_hub/data/local/token_storage/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../config/config.dart';
import '../../../domain/models/token_model/token_model.dart';

@Injectable(as: TokenStorage)
class TokenStorageImpl implements TokenStorage {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> saveToken(TokenModel token) async {
    Map<String, dynamic> tokenJson = token.toJson();
    String tokenJsonString = jsonEncode(tokenJson);

    await _storage.write(key: TokenStorage.key, value: tokenJsonString);
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: TokenStorage.key);
  }

  @override
  Future<TokenModel?> readToken() async {
    final tokenString = await _storage.read(key: TokenStorage.key);
    if (tokenString != null && tokenString.isNotEmpty) {
      Map<String, dynamic> tokenJson = jsonDecode(tokenString);
      return TokenModel.fromJson(tokenJson);
    }
    return null;
  }
}
