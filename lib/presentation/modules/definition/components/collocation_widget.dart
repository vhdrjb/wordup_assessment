import 'package:assessment/domain/word/entity/collocation_entity.dart';
import 'package:assessment/domain/word/entity/tips_entity.dart';
import 'package:assessment/domain/word/entity/word_entity.dart';
import 'package:assessment/presentation/config/theme/dimensions.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:assessment/presentation/modules/definition/components/styleable_text_widget.dart';
import 'package:flutter/material.dart';

class CollocationWidget extends StatelessWidget {
  final CollocationEntity tip;

  const CollocationWidget({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.smallBorder),
        color: context.appColorScheme.cardBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Dimensions.marginVertical_8,
            Text(
              tip.title,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Dimensions.marginVertical_8,
            StyleableTextWidget(
              words: tip.description,
              normalStyle: context.textTheme.bodyLarge?.copyWith(
                color: context.appColorScheme.textColor,
              ),
              highlightStyle: context.textTheme.bodyLarge?.copyWith(
                color: context.appColorScheme.highlightTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Dimensions.marginVertical_8,
            Container(
              padding: EdgeInsets.all(Dimensions.margin_8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.smallBorder),
                color: context.appColorScheme.focusedCardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\u201C', style: context.textTheme.headlineMedium),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...tip.example.take(3).map((e) =>
                        Row(
                          children: [
                            Icon(Icons.label),
                            Dimensions.marginHorizontal_8,
                            StyleableTextWidget(
                              maxLines: 2,
                              words: e,
                              normalStyle: context.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.appColorScheme.textColor,
                              ),
                              highlightStyle: context.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.appColorScheme.highlightTextColor,
                              ),
                            ),
                          ],
                        )
                      ,)
                    ],
                  ),
                  Dimensions.marginVertical_8,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
