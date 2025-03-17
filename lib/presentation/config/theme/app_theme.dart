import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_color_scheme.dart';

class AppTheme {
  late ThemeData themeData;

  AppTheme._light()
    : themeData = ThemeData(
        colorScheme: AppColorScheme.light(),
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
      );

  AppTheme._dark()
    : themeData = ThemeData(
        colorScheme: AppColorScheme.dark(),
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
      );

  factory AppTheme.theme({required Brightness brightness}) {
    if (brightness == Brightness.dark) {
      return AppTheme._dark();
    } else {
      return AppTheme._light();
    }
  }
}
