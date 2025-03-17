import 'package:assessment/domain/word/entity/collocation_entity.dart';
import 'package:assessment/domain/word/entity/tips_entity.dart';

import '../../base/styleable_word.dart';

class TipsParser {
  final SpecificTextParser specificTextParser = const SpecificTextParser();

  const TipsParser();

  Iterable<TipsEntity> parse(String? tips, String word) {
    if (tips?.isNotEmpty != true) {
      return List.empty();
    }
    final regex = RegExp(
      r'(?<title>[^|]+)\|(?<description>[^|]+)\|(?<example>[^\r\n]+)',
    );
    final List<TipsEntity> tipEntities = List.empty(growable: true);
    for (final match in regex.allMatches(tips!)) {
      tipEntities.add(
        TipsEntity(
          title: (match.namedGroup('title') ?? '').trim(),
          description: specificTextParser.parse(
            match.namedGroup('description') ?? '',
            word,
          ),
          example: specificTextParser.parse(
            match.namedGroup('example') ?? '',
            word,
          ),
        ),
      );
    }
    return tipEntities;
  }
}

class WordParser {
  const WordParser();

  Map<String, dynamic> parse(String wordInfo) {
    final regex = RegExp(
      r'^(?<ID>[^|]*)\|(?<Rank>[^|]*)\|(?<Text>[^|]*)\|(?<OtherForms>[^|]*)\|(?<PrimaryMeaning>[^|]*)\|(?<PrimarySenseId>[^|]*)\|(?<Type>[^|]*)\|(?<BritishPhonetic>[^|]*)\|(?<AmericanPhonetic>[^|]*)$',
    );

    final Map<String, dynamic> result = {};
    final match = regex.firstMatch(wordInfo);
    if (match != null) {
      result['forms'] = match.namedGroup('OtherForms')?.split(',');
      result['id'] = match.namedGroup('ID');
      result['rank'] = match.namedGroup('Rank');
      result['text'] = match.namedGroup('Text');
      result['british'] = match.namedGroup('BritishPhonetic');
      result['american'] = match.namedGroup('AmericanPhonetic');
    }
    return result;
  }
}

class SpecificTextParser {
  const SpecificTextParser();

  Iterable<StyleableWord> parse(String inputText, String targetWord) {
    final escapedWord = RegExp.escape(targetWord);
    final regex = RegExp(r'\b(?:' + escapedWord + r')\b', caseSensitive: false);

    final matches = regex.allMatches(inputText);
    final result = <StyleableWord>[];
    int currentIndex = 0;

    for (final match in matches) {
      // Add normal text before the match
      if (match.start > currentIndex) {
        result.add(
          StyleableWord(
            text: inputText.substring(currentIndex, match.start),
            style: Style.normal,
          ),
        );
      }

      // Add highlighted match
      result.add(
        StyleableWord(
          text: inputText.substring(match.start, match.end),
          style: Style.highlight,
        ),
      );

      currentIndex = match.end;
    }

    // Add remaining text after last match
    if (currentIndex < inputText.length) {
      result.add(
        StyleableWord(
          text: inputText.substring(currentIndex),
          style: Style.normal,
        ),
      );
    }

    return result;
  }
}

class CommonPhraseParser {
  final SpecificTextParser _parser = const SpecificTextParser();

  const CommonPhraseParser();

  CollocationEntity parse(Iterable<String> commonPhrases, String word) {
    return CollocationEntity(
      title: 'Collocations',
      description: [StyleableWord(text: 'It often appears as')],
      example: commonPhrases.map((e) => _parser.parse(e.trim(), word)),
    );
  }
}

class CompareParser {
  const CompareParser();

  Map<String,Iterable<StyleableWord>> parse(String input, List<String> highlightWords) {
    final  Map<String,Iterable<StyleableWord>> resultContent = {};
    final List<String> parts = input.split('|');
    final List<StyleableWord> result = List.empty(growable: true);
    if (parts.isEmpty) return resultContent;

    final String contentWord = parts[0].trim();
    final String description = parts.length > 1 ? parts[1] : '';


    if (description.isEmpty) return resultContent;

    final List<String>allWords = [contentWord, ...highlightWords];
    final String escapedWords = allWords.map(RegExp.escape).join('|');

    final regex = RegExp(
      r'(?<!\w)(?:' + escapedWords + r')(?!\w)',
      caseSensitive: false,
    );

    final String contentLower = contentWord.toLowerCase();
    final Set<String> highlightLower = highlightWords.map((w) => w.toLowerCase()).toSet();

    int currentIndex = 0;
    final  Iterable<RegExpMatch> matches = regex.allMatches(description);

    for (final match in matches) {
      // Add normal text before match
      if (match.start > currentIndex) {
        result.add(StyleableWord(
          text: description.substring(currentIndex, match.start),
          style: Style.normal,
        ));
      }

      // Determine match type
      final matchedText = description.substring(match.start, match.end);
      final style = matchedText.toLowerCase() == contentLower
          ? Style.content
          : highlightLower.contains(matchedText.toLowerCase())
          ? Style.highlight
          : Style.normal;

      result.add(StyleableWord(
        text: matchedText,
        style: style,
      ));

      currentIndex = match.end;
    }

    // Add remaining text
    if (currentIndex < description.length) {
      result.add(StyleableWord(
        text: description.substring(currentIndex),
        style: Style.normal,
      ));
    }

    resultContent[contentWord] = result;

    return resultContent;
  }
}
