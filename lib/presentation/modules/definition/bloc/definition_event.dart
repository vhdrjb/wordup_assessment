part of 'definition_bloc.dart';

@freezed
class DefinitionEvent with _$DefinitionEvent {
  const factory DefinitionEvent.downloadWordInfo() = _DownloadWordInfo;

  const factory DefinitionEvent.updateMedia(String id) = _UpdateMedia;
}
