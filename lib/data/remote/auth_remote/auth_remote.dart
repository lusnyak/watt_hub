import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';

part 'auth_remote.g.dart';

@RestApi(baseUrl: APIBase.url)
abstract class AuthRemoteApi {
  factory AuthRemoteApi(Dio dio) = _AuthRemoteApi;

  @POST(EndPoints.authOtp)
  Future<Map> signInWithEmail();
}
