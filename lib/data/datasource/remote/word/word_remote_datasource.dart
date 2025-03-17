import 'dart:typed_data';
import 'package:assessment/data/datasource/remote/base/api_service.dart';
import 'package:assessment/data/repository/word/dto/word_dto.dart';
import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordRemoteDataSource extends ApiService {
  WordRemoteDataSource({required super.dio});

  Future<WordDto> getWordById(String id) async {
    String url = '${EnvironmentVars.getWordUrl()}/$id.gz';
    return executeWithResponse(
      remote: (_) {
        return dio.get<Uint8List>(
          url,
          options: Options(responseType: ResponseType.bytes),
        );
      },
      mapper: (response) => WordDto.fromJson(response),
    );
  }
}
