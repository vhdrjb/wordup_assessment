// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordDto _$WordDtoFromJson(Map<String, dynamic> json) => _WordDto(
  usage: json['Usage'] as String?,
  senses:
      (json['Senses'] as List<dynamic>?)
          ?.map((e) => PhraseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  phrases:
      (json['Phrases'] as List<dynamic>?)
          ?.map((e) => PhraseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  quotes: (json['Quotes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  videos: (json['Videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  comparisons:
      (json['Comparisons'] as List<dynamic>?)?.map((e) => e as String).toList(),
  wisdom: (json['Wisdom'] as List<dynamic>?)?.map((e) => e as String).toList(),
  facts: (json['Facts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  misspellings: json['Misspellings'] as String?,
);

Map<String, dynamic> _$WordDtoToJson(_WordDto instance) => <String, dynamic>{
  'Usage': instance.usage,
  'Senses': instance.senses,
  'Phrases': instance.phrases,
  'Quotes': instance.quotes,
  'Videos': instance.videos,
  'Comparisons': instance.comparisons,
  'Wisdom': instance.wisdom,
  'Facts': instance.facts,
  'Misspellings': instance.misspellings,
};

_PhraseDto _$PhraseDtoFromJson(Map<String, dynamic> json) => _PhraseDto(
  id: json['id'] as String?,
  definition: json['de'] as String?,
  phraseDo: json['do'] as String?,
  typeOfWord: json['ty'] as String?,
  example: json['ex'] as String?,
  co: json['co'] as String?,
  sy: json['sy'] as String?,
  opposites: json['op'] as String?,
  commonPhrases:
      (json['cl'] as List<dynamic>?)?.map((e) => e as String).toList(),
  proTips: json['tp'] as String?,
);

Map<String, dynamic> _$PhraseDtoToJson(_PhraseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'de': instance.definition,
      'do': instance.phraseDo,
      'ty': instance.typeOfWord,
      'ex': instance.example,
      'co': instance.co,
      'sy': instance.sy,
      'op': instance.opposites,
      'cl': instance.commonPhrases,
      'tp': instance.proTips,
    };
