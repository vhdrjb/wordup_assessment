import 'package:assessment/domain/base/entity.dart';
import 'package:assessment/domain/base/styleable_word.dart';

class CompareEntity implements Entity {
  final String title;
  final Iterable<StyleableWord> description;

  CompareEntity({required this.title, required this.description});

}