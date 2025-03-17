import 'package:assessment/domain/word/info/parser.dart';
import 'package:assessment/infrastructure/bootstrap/environment_vars.dart';
import 'package:assessment/presentation/base/bloc/base_bloc.dart';
import 'package:assessment/presentation/base/bloc/base_states.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config/routes.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_Init>((event, emit) async {
      await Future.delayed(Duration(milliseconds: 700)).whenComplete(() {
        emit(
          StartAppState(
            path: Routes.definitionUrl(
              WordParser().parse(EnvironmentVars.getWord())['id']
            ),
          ),
        );
      });
    });
  }
}
