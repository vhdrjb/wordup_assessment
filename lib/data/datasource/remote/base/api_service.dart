import 'dart:async';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:dio/dio.dart';

abstract class ApiService {
  final Dio dio;

  const ApiService({required this.dio});
  Future<D> executeWithResponse<D>({required ApiCall remote,
    Map requestDto = const {},
    required RemoteMapper<D> mapper}) async {
      Response response = await remote(requestDto);
      final archive = GZipDecoder().decodeBytes(response.data!);
      String jsonString = utf8.decode(archive);
      return mapper.call(jsonDecode(jsonString));
  }

  Future execute({required ApiCall remote, Map requestDto = const {}}) async {
      Response response = await remote(requestDto);
      assert((response.statusCode ?? 0) ~/ 100 == 2);
  }

}

typedef ApiCall = Future<Response> Function(Map requestDto);
typedef RemoteMapper<D> = D Function(Map<String,dynamic> response);
