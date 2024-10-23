import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/interceptor/interceptors.dart';

@module
class DioClient {
  DioClient._();

  @lazySingleton
  Dio dio() => Dio(BaseOptions(
        baseUrl: APIBase.url,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 10),
      ))
        ..interceptors.add(ApiLoggingInterceptor());
}
