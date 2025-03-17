import 'package:assessment/domain/base/styleable_word.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class StyleableTextWidget extends StatelessWidget {
  final Iterable<StyleableWord> words;
  final TextStyle? normalStyle;
  final TextStyle? highlightStyle;
  final TextStyle? contentStyle;

  final int? maxLines;

  const StyleableTextWidget({
    super.key,
    required this.words,
    this.normalStyle,
    this.highlightStyle,
    this.maxLines,
    this.contentStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      overflow: maxLines !=null ? TextOverflow.ellipsis: TextOverflow.visible,
      text: TextSpan(
        children: words.map((word) => _buildStyledText(context, word)).toList(),
      ),
    );
  }

  TextSpan _buildStyledText(BuildContext context, StyleableWord word) {
    return TextSpan(
      text: word.text,
      style: switch (word.style) {
        Style.normal => normalStyle,
        Style.highlight => highlightStyle,
        Style.content => contentStyle,
      },
    );
  }

  // Define your text styles
}
