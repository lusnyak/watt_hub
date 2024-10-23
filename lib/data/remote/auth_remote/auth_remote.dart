import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/models/token_model/token_model.dart';

part 'auth_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class AuthRemoteApi {
  @factoryMethod
  factory AuthRemoteApi(Dio dio) = _AuthRemoteApi;

  @POST(EndPoints.authOtp)
  Future<TokenModel?> otp(@Field('email') String email);
}
