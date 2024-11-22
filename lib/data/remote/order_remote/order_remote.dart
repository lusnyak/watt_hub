import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';

part 'order_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class OrderRemoteApi {
  @factoryMethod
  factory OrderRemoteApi(Dio dio) = _OrderRemoteApi;
}
