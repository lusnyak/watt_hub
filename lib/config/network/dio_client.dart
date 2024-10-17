import 'package:dio/dio.dart';
import 'package:watt_hub/config/network/constants.dart';

import 'interceptor/interceptors.dart';

class DioClient {
  DioClient._();

  static DioClient instance = DioClient._();

  Dio get dio => Dio(BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 10),
      ))
        ..interceptors.add(TestInterceptor());

  Future<Response> signUp(String email) async {
    try {
      final response = await dio.post('/signup', data: {'email': email});
      return response;
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    }
  }
}
