
import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';
import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:injectable/injectable.dart';
import 'log_interceptor.dart';
@module
abstract class NetworkModule {
  @injectable
  Dio provideDio() {
    final Dio dio = Dio();
    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}