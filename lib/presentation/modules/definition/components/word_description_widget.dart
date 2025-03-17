import 'package:assessment/domain/word/entity/sense_entity.dart';
import 'package:assessment/domain/word/entity/word_entity.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../infrastructure/bootstrap/environment_vars.dart';
import '../../../config/theme/dimensions.dart';

class WordDescriptionWidget extends StatefulWidget {
  final WordEntity word;
  final SenseEntity sense;
  const WordDescriptionWidget({super.key,required this.word,required this.sense});

  @override
  State<WordDescriptionWidget> createState() => _WordDescriptionWidgetState();
}

class _WordDescriptionWidgetState extends State<WordDescriptionWidget> {
  late final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  void initState() {
    super.initState();
    _audioPlayer.setUrl('${EnvironmentVars.getPronounceUrl()}/${widget.word.wordId}.mp3');
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              _audioPlayer.play().whenComplete(() {
                _audioPlayer.seek(Duration.zero);
              },);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.volume_up_rounded,color: context.appColorScheme.textColor,),
                Dimensions.marginHorizontal_8,
                Text('/${widget.word.american}/',
                  style: context.textTheme.titleLarge?.copyWith(
                      color: context.appColorScheme.textColor
                  ),),
                Dimensions.marginHorizontal_16,
                Text(
                  '#${widget.word.rank}', style: context.textTheme.titleLarge?.copyWith(
                  color: context.appColorScheme.textColor
                ),),
              ],
            ),
          ),
        ),
        Text(widget.sense.typeOfWord,style: context.textTheme.bodyMedium?.copyWith(
          color: context.appColorScheme.wordTypeColor
        ),),
      ],
    );
  }
}
