import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'dependency_component.config.dart';
import '../routing/app_router.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  _getIt.init();

}

AppRouter get router => _getIt.get<AppRouter>();