import 'package:dio/dio.dart';

String getDioExceptionErrorMessage(DioException err) {
  switch (err.type) {
    case DioExceptionType.connectionError:
      return 'No internet connection. Please check your connectivity.';
    case DioExceptionType.receiveTimeout:
      return 'Connection timed out. Please try again later.';
    case DioExceptionType.sendTimeout:
      return 'Sending request timed out. Please try again later.';
    case DioExceptionType.unknown:
      return 'An unexpected error occurred. Please try again.';
    default:
      return 'An unexpected error occurred';
  }
}
