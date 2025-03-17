abstract class Routes  {
  static const String splash = '/';

  static const String definition = '/definition/:id';

  static  String definitionUrl(String wordId) {
    return '/definition/$wordId';
  }

}