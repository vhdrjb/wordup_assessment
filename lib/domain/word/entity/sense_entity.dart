import 'package:assessment/domain/base/entity.dart';
import 'package:assessment/domain/base/styleable_word.dart';

import 'collocation_entity.dart';
import 'tips_entity.dart';

class SenseEntity implements Entity {
  final String id;
  final String definition;
  final String typeOfWord;
  final Iterable<StyleableWord> example;

  final String speak;
  final String synonyms;
  final String opposites;
  final Iterable<TipsEntity> tips;
  final CollocationEntity collocation;

  SenseEntity({
    required this.id,
    required this.definition,
    required this.typeOfWord,
    required this.example,
    required this.speak,
    required this.synonyms,
    required this.opposites,
    required this.tips,
    required this.collocation,
  });
}
