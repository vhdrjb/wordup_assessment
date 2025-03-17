import 'package:assessment/presentation/base/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/base_states.dart';

abstract class BasePage<B extends BaseBloc> extends StatefulWidget {
  const BasePage({super.key});

}

abstract class PageState<B extends BaseBloc> extends State<BasePage<B>> {
  late B bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => BlocListener(
        bloc: context.read<B>(),
        listenWhen: listenCondition,
        listener: (context, state) {
          listenState(context, state);
        },
        child: buildScreen(context),
      ),
    );
  }

  Widget buildScreen(BuildContext context);

  @mustCallSuper
  bool listenCondition(Object? previous, Object? current) {
    return current is ListenableStates;
  }

  @mustCallSuper
  void listenState(BuildContext context, Object? state) {
    if (state is MoveState) {
      _navigationState(state);
      return;
    }

    if (state is ReturnState) {
      _returnState(state);
      return;
    }
  }

  void _navigationState(MoveState state) {
    if (state.runtimeType == ReplaceState) {
      return _replace(state as ReplaceState);
    } else {
      return _navigate(state);
    }
  }

  void _replace(ReplaceState state) {
    context.go(
        Uri(path: state.path, queryParameters: state.queries).toString(),
        extra: state.extra);
  }

  void _navigate(MoveState state) {
    context.push(Uri(path: state.path, queryParameters: state.queries).toString(),
        extra: state.extra);
  }

  void _returnState(ReturnState state) {
    if (context.canPop()) {
      return context.pop(state.payload);
    }
  }
}
