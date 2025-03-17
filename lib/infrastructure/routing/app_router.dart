import 'package:assessment/infrastructure/routing/provider/definition_page_provider.dart';
import 'package:assessment/infrastructure/routing/provider/splash_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/config/routes.dart';
import 'app_route_factory.dart';

@lazySingleton
class AppRouter {
  final AppRouteFactory _routeFactory;
  GoRouter? _goRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'root');


  AppRouter({required AppRouteFactory routeFactory}) : _routeFactory = routeFactory {
    generateRouter();
  }

  GoRouter get router => _goRouter!;

  GoRouter generateRouter() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      _goRouter = GoRouter(
        navigatorKey: _rootNavigatorKey,
        overridePlatformDefaultLocation: true,
        debugLogDiagnostics: true,
        initialLocation: Routes.splash,
        routes: [
          GoRoute(path: Routes.splash,pageBuilder: _routeFactory.create,name: Routes.splash),
          GoRoute(path: Routes.definition,pageBuilder: _routeFactory.create,name: Routes.definition)
        ],
      );
      goRouter = _goRouter!;
    } else {
      goRouter = _goRouter!;
    }
    return goRouter;
  }
}
