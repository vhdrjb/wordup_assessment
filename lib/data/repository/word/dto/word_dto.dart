import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_dto.freezed.dart';
part 'word_dto.g.dart';

@freezed
abstract class WordDto with _$WordDto {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory WordDto({
    String? usage,
    List<PhraseDto>? senses,
    List<PhraseDto>? phrases,
    List<String>? quotes,
    List<String>? videos,
    List<String>? comparisons,
    List<String>? wisdom,
    List<String>? facts,
    String? misspellings,
  }) = _WordDto;



  factory WordDto.fromJson(Map<String, dynamic> json) =>
      _$WordDtoFromJson(json);
}

@freezed
abstract class PhraseDto with _$PhraseDto {
  const factory PhraseDto({
    String? id,
    @JsonKey(name: "de")
    String? definition,
    @JsonKey(name: "do")
    String? phraseDo,
    @JsonKey(name: "ty")
    String? typeOfWord,
    @JsonKey(name: "ex")
    String? example,
    @JsonKey(name: "co")
    String? co,
    @JsonKey(name: "sy")
    String? sy,
    @JsonKey(name: "op")
    String? opposites,
    @JsonKey(name: "cl")
    List<String>? commonPhrases,
    @JsonKey(name: "tp")
    String? proTips,
}) = _PhraseDto;

  factory PhraseDto.fromJson(Map<String, dynamic> json) =>
      _$PhraseDtoFromJson(json);
}