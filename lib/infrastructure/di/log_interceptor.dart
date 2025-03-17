
import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class LogInterceptor extends InterceptorsWrapper {
  static const instanceName = "log_interceptor";

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    StringBuffer result = StringBuffer();

    result.writeln("Error ${err.requestOptions.method} <= ${err.requestOptions.baseUrl}${err.requestOptions.path}");
    result.writeln("Response : ${err.response}");

    developer.log(result.toString(),name: "${err.requestOptions.path}");

    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    StringBuffer result = StringBuffer();
    // write request
    result.writeln(
        "Request ${options.method} => ${options.baseUrl}${options.path}");
    // headers
    result.writeln("Headers :${options.headers.toString()}");
    // body

    result.writeln("body : { ${options.data} }");
    developer.log(result.toString(), name: options.path);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    StringBuffer result = StringBuffer();
    // write request
    result.writeln(
        "Response ${response.requestOptions.method} <= ${response.requestOptions.baseUrl}${response.requestOptions.path}");
    result.writeln("Headers :${response.headers.toString()}");
    result.writeln("body :${response.data})}");
    developer.log(result.toString(), name: response.requestOptions.path);

    super.onResponse(response, handler);
  }
}
