part of 'definition_bloc.dart';

@freezed
abstract class DefinitionState with _$DefinitionState {
  const factory DefinitionState.initial() = _Initial;
}

@freezed
 sealed class DefinitionWordState with _$DefinitionWordState  implements DefinitionState {
  const factory DefinitionWordState.loading() = WordLoading;

  const factory DefinitionWordState.data(WordEntity word) = WordData;

  const factory DefinitionWordState.error(String error) = WordError;
}

@freezed
sealed class DefinitionSenseMediaState with _$DefinitionSenseMediaState implements DefinitionState {
  const factory DefinitionSenseMediaState.video(String url) = SenseVideo;

  const factory DefinitionSenseMediaState.image(String url) = SenseImage;

  const factory DefinitionSenseMediaState.loading() = Loading;
}