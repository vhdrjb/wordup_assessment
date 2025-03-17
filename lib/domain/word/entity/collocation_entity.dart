import '../../base/entity.dart';
import '../../base/styleable_word.dart';

class CollocationEntity implements Entity {
  final String title;
  final Iterable<StyleableWord> description;
  final Iterable<Iterable<StyleableWord>> example;

  CollocationEntity({required this.title, required this.description, required this.example});
}
