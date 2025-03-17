import 'dart:async';

import 'package:assessment/data/repository/word/dto/word_dto.dart';
import 'package:assessment/data/repository/word/word_repository.dart';
import 'package:assessment/domain/base/styleable_word.dart';
import 'package:assessment/domain/base/use_case/single_usecase.dart';
import 'package:assessment/domain/word/entity/compare_entity.dart';
import 'package:assessment/domain/word/entity/word_entity.dart';
import 'package:assessment/domain/word/info/parser.dart';
import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';

import '../entity/sense_entity.dart';
import '../entity/tips_entity.dart';
import 'get_word_info_request.dart';

class GetWordInfoUseCase extends SingleUseCase<WordEntity, GetWordInfoRequest> {
  final WordRepository _repository;
  final TipsParser _parser = const TipsParser();
  final WordParser _wordParser = const WordParser();
  final SpecificTextParser _specificTextParser = const SpecificTextParser();

  final CommonPhraseParser _commonPhraseParser = const CommonPhraseParser();
  final CompareParser _compareParser = const CompareParser();

  GetWordInfoUseCase({required WordRepository repository})
    : _repository = repository;

  @override
  FutureOr<WordEntity> task(GetWordInfoRequest request) async {
    final WordDto word = await _repository.getWordInfo(request.wordId);
    final Map<String, dynamic> wordInfo = _wordParser.parse(
      EnvironmentVars.getWord(),
    );
    final String wordName = wordInfo['text'];
    return WordEntity(
      american: wordInfo['american'],
      british: wordInfo['british'],
      rank: wordInfo['rank'],
      wordId: wordInfo['id'],
      wordName: wordInfo['text'],
      otherForms: wordInfo['forms'],
      compare:
          word.comparisons?.map((e) {
            final result = _compareParser.parse(e, [wordInfo['text'],...wordInfo['forms']]);
            return CompareEntity(
              title: result.keys.first,
              description: result[result.keys.first] ?? []
            );
          }) ??
          [],
      senses:
          word.senses?.map((e) {
            return SenseEntity(
              speak: '${e.definition}. For example: ${e.example}',
              id: e.id ?? '',
              definition: e.definition ?? '',
              typeOfWord: e.typeOfWord ?? '',
              example: _specificTextParser.parse(e.example ?? '', wordName),
              synonyms: e.sy ?? '',
              opposites: e.opposites ?? '',
              tips: _parser.parse(e.proTips, wordName),
              collocation: _commonPhraseParser.parse(
                e.commonPhrases ?? [],
                wordName,
              ),
            );
          }).toList() ??
          [],
    );
  }
}
