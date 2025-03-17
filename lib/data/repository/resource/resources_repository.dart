import 'dart:async';

import '../../datasource/remote/resource/resources_remote_datasource.dart';

class ResourceRepository {
  final ResourceRemoteDataSource _remoteDataSource;

  ResourceRepository({required ResourceRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  FutureOr<bool> videoExists(String id) async {
    try {
      final result = await _remoteDataSource.videoExists(id).then((_) => true);
      return result;
    } catch (_) {
      return false;
    }
  }

  FutureOr<bool> pronounceExists(String id) async  {
    try {
      final result = await _remoteDataSource.pronounceExists(id).then((_) => true);
      return result;
    } catch (_) {
      return false;
    }
  }

  FutureOr<bool> imageExists(String id) async {
    try {
      final result = await _remoteDataSource.imageExists(id).then((_) => true);
      return result;
    } catch (_) {
      return false;
    }
  }
}
