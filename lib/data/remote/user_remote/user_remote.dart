import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/body_requests_model/edit_user/edit_user_model.dart';
import 'package:watt_hub/domain/models/user/user_model.dart';

part 'user_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class UserRemoteApi {
  @factoryMethod
  factory UserRemoteApi(Dio dio) = _UserRemoteApi;

  @GET(EndPoints.usersMe)
  Future<UserModel?> usersMe();

  @PUT(EndPoints.usersEdit)
  Future<dynamic> edit(
    @Path("id") int? id,
    @Body() EditUserModel? editData,
  );
}
