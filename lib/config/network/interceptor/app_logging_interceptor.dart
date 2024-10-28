import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/data/local/token_storage/token_storage.dart';

class ApiLoggingInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    options.headers[HeaderParameterKeys.accept] = HeaderValues.applicationJson;
    final tokenMdl = await getIt<TokenStorage>().readToken();
    if (tokenMdl != null && tokenMdl.token!.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${tokenMdl.token}';
    }
    debugPrint(
        'REQUEST[${options.method}] => PATH: ${options.uri} => HEADER: ${options.headers}  => BODY: ${options.data} => QUERY: ${options.queryParameters}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} => DATA: ${response.data}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} => MESSAGE: ${err.message} => DATA: ${err.response?.data}',
    );
    return super.onError(err, handler);
  }
}
