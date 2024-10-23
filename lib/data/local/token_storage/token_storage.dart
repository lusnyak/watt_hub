import '../../../domain/models/token_model/token_model.dart';

abstract class TokenStorage {
  static const String key = "token";

  Future<void> deleteToken();

  Future<TokenModel?> readToken();

  Future<void> saveToken(TokenModel token);
}
