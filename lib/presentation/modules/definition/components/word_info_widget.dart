import 'package:assessment/domain/word/entity/sense_entity.dart';
import 'package:assessment/domain/word/entity/word_entity.dart';
import 'package:assessment/presentation/config/theme/dimensions.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:assessment/presentation/utility/speaker.dart';
import 'package:flutter/material.dart';

import 'styleable_text_widget.dart';
import 'theme_button_widget.dart';
import 'word_description_widget.dart';

class WordInfoWidget extends StatelessWidget {
  final SenseEntity sense;
  final WordEntity word;

  const WordInfoWidget({super.key, required this.sense, required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.margin_16,
        horizontal: Dimensions.margin_24,
      ),
      decoration: BoxDecoration(
        color: context.appColorScheme.cardBackgroundColor,
        borderRadius: BorderRadius.circular(Dimensions.smallBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  word.wordName,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                      color: context.appColorScheme.textColor
                  ),
                ),
              ),
              ThemeToggleButton(isDarkMode: false,)
            ],
          ),
          Dimensions.marginVertical_16,
          WordDescriptionWidget(
            word: word,
            sense: sense,
          ),
          Dimensions.marginVertical_8,
          Divider(),
          Dimensions.marginVertical_8,
          Text(sense.definition, style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            color: context.appColorScheme.textColor
          ),),
          Dimensions.marginVertical_8,
          StyleableTextWidget(words: sense.example,
              normalStyle : context.textTheme.bodyLarge?.copyWith(
                fontStyle: FontStyle.italic,
                color: context.appColorScheme.textColor,
              ),
            highlightStyle: context.textTheme.bodyLarge?.copyWith(
              fontStyle: FontStyle.italic,
              color: context.appColorScheme.highlightTextColor,
            ),
          ),
          Dimensions.marginVertical_16,
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: context.appColorScheme.textColor,
                foregroundColor: context.appColorScheme.buttonForegroundColor
              ),
              onPressed: () {
                Speaker.instance.speak(sense.speak);
              }, icon: Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}
