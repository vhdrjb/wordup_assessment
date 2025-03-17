part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.switchToLightTheme() = _Light;
  const factory ThemeEvent.switchToDarkTheme() = _Dark;
}
