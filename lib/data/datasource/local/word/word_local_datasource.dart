import 'package:assessment/data/repository/word/dto/word_dto.dart';
import 'package:assessment/domain/exceptions/not_found_exception.dart';
import 'package:injectable/injectable.dart';
@injectable
class WordLocalDataSource  {
  final Map<String,WordDto> _wordCache = {};

  WordDto getWordById(String id) {
    if (_wordCache.containsKey(id)) {
      return _wordCache[id]!;
    }else {
      throw NotFoundException();
    }
  }

  WordDto updateWord(String id,WordDto word) {
    _wordCache[id] = word;
    return word;
  }



}