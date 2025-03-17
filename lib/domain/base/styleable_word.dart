
enum Style {
  normal,highlight,content
}
class StyleableWord {
  final String text;
  final Style style;

  StyleableWord({required this.text,  this.style = Style.normal});

}