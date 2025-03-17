import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WidgetComponent<
  Bloc extends BlocBase<BlocState>,
  BlocState,
  CurrentState extends BlocState
>
    extends StatelessWidget {
  const WidgetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    onInit(context);
    return BlocBuilder<Bloc, BlocState>(
      builder: (_, state) {
        return  state is CurrentState
            ? buildOnData(context, state)
            : buildEmpty(context);
      },
      buildWhen: (previous, current) => rebuildCondition(previous, current),
    );
  }

  void onInit(BuildContext context) {}

  Widget buildOnData(BuildContext context, CurrentState state);

  Widget buildEmpty(BuildContext context) {
    return SizedBox.shrink();
  }

  bool rebuildCondition(BlocState? previous, BlocState? current) {
    return current is CurrentState;
  }
}
