import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';
import 'package:assessment/infrastructure/routing/provider/base_page_provider.dart';
import 'package:assessment/presentation/modules/splash/bloc/splash_bloc.dart';
import 'package:assessment/presentation/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/word/info/parser.dart';

class SplashPageProvider extends BasePageProvider<SplashBloc> {
  @override
  SplashBloc buildBloc() {
    return SplashBloc()..updateRouting(
      pathParameters: {
        'id': WordParser().parse(EnvironmentVars.getWord())['id'],
      },
    );
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(create: (_) => getBloc(state), child: SplashPage());
  }
}
