import 'package:assessment/domain/base/styleable_word.dart';
import 'package:assessment/domain/word/entity/compare_entity.dart';
import 'package:assessment/domain/word/entity/word_entity.dart';
import 'package:assessment/presentation/base/page/widget_component.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:assessment/presentation/modules/definition/bloc/definition_bloc.dart';
import 'package:assessment/presentation/modules/definition/components/styleable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../config/theme/dimensions.dart';
import 'collocation_widget.dart';
import 'media_component.dart';
import 'tip_widget.dart';
import 'word_info_widget.dart';

class WordComponent
    extends
        WidgetComponent<DefinitionBloc, DefinitionState, DefinitionWordState> {
  const WordComponent({super.key});

  @override
  Widget buildOnData(BuildContext context, DefinitionWordState state) {
    return switch (state) {
      WordLoading() => _LoadingWidget(),
      WordData(:final word) => _SenseContentWidget(word: word),
      WordError(:final error) => Text(error.toString()),
    };
  }
}

class _SenseStructureWidget extends StatelessWidget {
  final Widget media;
  final Widget content;

  const _SenseStructureWidget({required this.media, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(aspectRatio: 2 / 1.5, child: media),
        Transform.translate(
          offset: Offset(0, -Dimensions.margin_64), // Shift up by 16dp
          child: content,
        ),
      ],
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return _SenseStructureWidget(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade100,
          highlightColor: Colors.grey.shade300,
          child: Container(
            height: Dimensions.cardHeight,
            decoration: BoxDecoration(
              color: context.appColorScheme.cardBackgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimensions.smallBorder),
              ),
            ),
          ),
        ),
      ),
      media: Container(
        color: context.appColorScheme.cardBackgroundColor,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _SenseContentWidget extends StatefulWidget {
  final WordEntity word;

  const _SenseContentWidget({required this.word});

  @override
  State<_SenseContentWidget> createState() => _SenseContentWidgetState();
}

class _SenseContentWidgetState extends State<_SenseContentWidget> {
  late int selectedIndex;
  late CompareEntity selectedCompare;
  late Iterable<StyleableWord> words;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
    selectedCompare = widget.word.compare.first;
    words = widget.word.compare.first.description;
  }

  @override
  Widget build(BuildContext context) {
    return _SenseStructureWidget(
      media: MediaComponent(),
      content: Column(
        children: [
          SizedBox(
            height: Dimensions.cardHeight,
            child: PageView(
              onPageChanged: (value) {
                context.read<DefinitionBloc>().add(
                  DefinitionEvent.updateMedia(widget.word.senses[value].id),
                );
                setState(() {
                  selectedIndex = value;
                });
              },
              controller: PageController(viewportFraction: .95),
              children: [
                ...widget.word.senses.map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.margin_4,
                    ),
                    child: WordInfoWidget(word: widget.word, sense: e),
                  ),
                ),
              ],
            ),
          ),
          Dimensions.marginVertical_16,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.tips_and_updates_outlined),
              Dimensions.marginHorizontal_8,
              Text('Pro Tips', style: context.textTheme.bodyLarge?.copyWith(
                color: context.appColorScheme.textColor
              )),
            ],
          ),
          Dimensions.marginVertical_16,
          SizedBox(
            height: Dimensions.tipsHeight,
            child: PageView(
              controller: PageController(viewportFraction: .95),
              children: [
                ...widget.word.senses[selectedIndex].tips.map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.margin_4,
                    ),
                    child: TipWidget(tip: e),
                  ),
                ),
                CollocationWidget(
                  tip: widget.word.senses[selectedIndex].collocation,
                ),
              ],
            ),
          ),
          Dimensions.marginVertical_16,
          Container(
            color: context.appColorScheme.cardBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Dimensions.marginVertical_16,
                Center(
                  child: Text(
                    'Compare with',
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.appColorScheme.textColor
                    ),
                  ),
                ),
                Dimensions.marginVertical_16,
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  spacing: Dimensions.margin_8,
                  runSpacing: Dimensions.margin_8,
                  children: [
                    ...widget.word.compare.map((e) {
                      return _CompareWidget(
                        selected: e.title == selectedCompare.title,
                        title: e.title,
                        onPress: () {
                          setState(() {
                            selectedCompare = e;
                            words = e.description;
                          });
                        },
                      );
                    },)
                  ],
                ),
                Dimensions.marginVertical_8,
                Padding(
                  padding: const EdgeInsets.all(Dimensions.margin_16),
                  child: StyleableTextWidget(words: words,
                    normalStyle: context.textTheme.bodyLarge?.copyWith(
                      color: context.appColorScheme.textColor,
                    ),
                    highlightStyle: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.appColorScheme.highlightTextColor,
                    ),
                    contentStyle: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.appColorScheme.focusedTextColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CompareWidget extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onPress;
  const _CompareWidget({super.key, required this.title, required this.onPress, required this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.margin_16,vertical: Dimensions.margin_8),
        decoration: BoxDecoration(
          color: selected ? context.appColorScheme.focusedTextColor : context.appColorScheme.focusedCardColor,
          borderRadius: BorderRadius.circular(Dimensions.smallBorder)
        ),
        child: Text(title,style: context.textTheme.titleMedium?.copyWith(
          fontWeight: selected ? FontWeight.bold : FontWeight.w500,
          color: selected ? context.appColorScheme.buttonForegroundColor : context.appColorScheme.highlightTextColor
        ),),
      ),
    );
  }
}

