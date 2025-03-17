import 'package:assessment/data/datasource/remote/base/api_service.dart';
import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResourceRemoteDataSource extends ApiService {
  ResourceRemoteDataSource({required super.dio});

  Future<void> pronounceExists(String id) {
    final String path = '${EnvironmentVars.getPronounceUrl()}/$id.mp3';
    return execute(remote: (requestDto) => dio.head(path));
  }

  Future<void> imageExists(String id) {
    final String path = '${EnvironmentVars.getImageUrl()}/$id.webp?v=1';
    return execute(remote: (requestDto) => dio.head(path));
  }

  Future<void> videoExists(String id) {
    final String path = '${EnvironmentVars.getVideoUrl()}/$id.mp4';
    return execute(remote: (requestDto) => dio.head(path));
  }
}
