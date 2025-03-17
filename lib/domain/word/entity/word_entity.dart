import 'package:assessment/domain/base/entity.dart';
import 'compare_entity.dart';
import 'sense_entity.dart';
import 'tips_entity.dart';

class WordEntity implements Entity {
  final List<SenseEntity> senses;
  final String wordId;
  final String rank;
  final String british;
  final String american;

  final String wordName;

  final Iterable<String> otherForms;

  final Iterable<CompareEntity> compare;

  WordEntity({
    required this.senses,
    required this.wordId,
    required this.rank,
    required this.british,
    required this.wordName,
    required this.american,
    required this.compare,
    required this.otherForms,
  });
}
