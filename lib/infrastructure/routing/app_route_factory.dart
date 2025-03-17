import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/config/routes.dart';
import 'provider/definition_page_provider.dart';
import 'provider/splash_page_provider.dart';

@lazySingleton
class AppRouteFactory {
  final DefinitionPageProvider _definitionPageProvider;
  final SplashPageProvider _splashPageProvider;

  AppRouteFactory({
    required DefinitionPageProvider definitionPageProvider,
    required SplashPageProvider splashPageProvider,
  }) : _definitionPageProvider = definitionPageProvider,
        _splashPageProvider = splashPageProvider;

  CustomTransitionPage create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? '/';
    if (path == Routes.splash) {
      return _providePage(
          _splashPageProvider.provide(context, state), state);
    }
    if (path == Routes.definition) {
      return _providePage(
          _definitionPageProvider.provide(context, state,), state);
    }
    throw 'page not found';
  }

  CustomTransitionPage _providePage(Widget page, GoRouterState state) {
    return CustomTransitionPage(
      child: page,
      transitionDuration: const Duration(milliseconds: 100),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        );
      },
    );
  }

}