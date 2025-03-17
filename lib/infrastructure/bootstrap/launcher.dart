import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

import '../di/dependency_component.dart';

typedef Application = Widget Function();

Future<void> launch(Application application) async {
  await dotenv.load(fileName: '.env');

  WidgetsFlutterBinding.ensureInitialized();


  configureDependencies();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(application());
}
