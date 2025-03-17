import 'package:flutter/material.dart';

abstract class AppColorScheme extends ColorScheme {
  static AppColorScheme? _darkInstance;
  static AppColorScheme? _lightInstance;

  const AppColorScheme._light({required super.primary}) : super.light();

  const AppColorScheme._dark({super.primary}) : super.dark();

  factory AppColorScheme.light() {
    _lightInstance ??= const _LightColorScheme();
    return _lightInstance!;
  }

  factory AppColorScheme.dark() {
    _darkInstance ??= const _DarkColorScheme();
    return _darkInstance!;
  }
  Color get textColor;

  Color get highlightTextColor;
  Color get focusedTextColor;

  Color get backgroundColor;

  Color get wordTypeColor;

  Color get cardBackgroundColor;

  Color get focusedCardColor;

  Color get popupItemColor;

  Color get buttonForegroundColor;

  Color get selectedThemeColor;

}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme()
    : super._light(primary: const Color(0xff382244));

  @override
  Color get backgroundColor => const Color(0xffe9ecee);

  @override
  Color get cardBackgroundColor => const Color(0xfff5f5f5);

  @override
  Color get focusedTextColor => const Color(0xff2a9a91);

  @override
  Color get highlightTextColor => const Color(0xffb348e8);

  @override
  Color get popupItemColor => const Color(0xff42125b);

  @override
  Color get textColor => const Color(0xff42125b);

  @override
  Color get wordTypeColor => const Color(0xff2a9a91);

  @override
  Color get focusedCardColor => const Color(0xffececec);

  @override
  Color get buttonForegroundColor => Color(0xffffffff);

  @override
  Color get selectedThemeColor =>const Color(0xff34dce3);
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme() : super._dark(primary: const Color(0xff382244));

  @override
  Color get backgroundColor => const Color(0xff1d2528);

  @override
  Color get cardBackgroundColor => const Color(0xff2f383f);

  @override
  Color get focusedTextColor => const Color(0xff499d9d);

  @override
  Color get highlightTextColor => const Color(0xffff83af);

  @override
  Color get popupItemColor => const Color(0xff245b12);

  @override
  Color get textColor => const Color(0xffe5e5e5);

  @override
  Color get wordTypeColor => const Color(0xff56b8c9);

  @override
  Color get focusedCardColor =>const Color(0xff464e54);

  @override
  Color get buttonForegroundColor => Color(0xff0d2c33);

  @override
  Color get selectedThemeColor =>const Color(0xff34cfe3);
}
