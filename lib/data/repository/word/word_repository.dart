import 'dart:async';

import 'package:assessment/data/datasource/local/word/word_local_datasource.dart';
import 'package:assessment/data/datasource/remote/word/word_remote_datasource.dart';
import 'package:assessment/data/repository/word/dto/word_dto.dart';
import '../../../domain/exceptions/not_found_exception.dart';

class WordRepository {
  final WordRemoteDataSource _remoteDataSource;
  final WordLocalDataSource _localDataSource;

  WordRepository({
    required WordRemoteDataSource remoteDataSource,
    required WordLocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  FutureOr<WordDto> getWordInfo(String id) {
    try {
      return _localDataSource.getWordById(id);
    } on NotFoundException catch (_) {
      return _remoteDataSource
          .getWordById(id)
          .then((value) => _localDataSource.updateWord(id, value));
    }
  }
}
