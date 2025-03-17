import 'package:assessment/domain/base/entity.dart';
import 'package:assessment/domain/base/styleable_word.dart';

class TipsEntity implements Entity {
  final String title;
  final Iterable<StyleableWord> description;
  final Iterable<StyleableWord> example;

  TipsEntity({required this.title, required this.description, required this.example});
}

