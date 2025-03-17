import 'package:assessment/infrastructure/di/dependency_component.dart';
import 'package:assessment/infrastructure/routing/app_router.dart';
import 'package:assessment/presentation/config/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'infrastructure/bootstrap/launcher.dart';
import 'presentation/config/theme/app_theme.dart';

void main() {
  launch(() => MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = router;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: const _AppWrapper(),
    );
  }
}

class _AppWrapper extends StatefulWidget {
  const _AppWrapper({super.key});

  @override
  State<_AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<_AppWrapper> {
  late AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = router;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          routerDelegate: _router.router.routerDelegate,
          routeInformationParser: _router.router.routeInformationParser,
          routeInformationProvider: _router.router.routeInformationProvider,
          theme: switch(state) {
            DarkTheme() => AppTheme.theme(brightness: Brightness.dark).themeData,
            LightTheme() => AppTheme.theme(brightness: Brightness.light).themeData,
          },
        );
      },
    );
  }
}
