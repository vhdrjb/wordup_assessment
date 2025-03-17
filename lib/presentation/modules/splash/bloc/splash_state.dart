part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
}

class StartAppState extends ReplaceState implements SplashState {
  StartAppState({required super.path});
}
