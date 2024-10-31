import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/interceptor/app_logging_interceptor.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(baseUrl: APIBase.url))
    ..interceptors.addAll([ApiLoggingInterceptor()]);
}
