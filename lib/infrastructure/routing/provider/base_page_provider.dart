import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../presentation/base/bloc/base_bloc.dart';
abstract class BasePageProvider<B extends BaseBloc> {
  Widget provide(BuildContext context, GoRouterState state);
  B buildBloc();

  B getBloc(GoRouterState state) {
    B bloc = buildBloc();
    bloc.updateRouting(
        pathParameters: state.pathParameters,
        extra: state.extra,
        queryParameters: state.uri.queryParameters
    );
    return bloc;
  }
}