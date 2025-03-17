final class Environment {
  static const wordId = String.fromEnvironment('WORD');
  static const wordServerUrl = String.fromEnvironment('WORD_URL');
  static const videoServerUrl = String.fromEnvironment('VIDEO_URL');
  static const imageServerUrl = String.fromEnvironment('IMAGE_URL');
  static const pronounceServerUrl = String.fromEnvironment('PRONOUNCE_URL');
}