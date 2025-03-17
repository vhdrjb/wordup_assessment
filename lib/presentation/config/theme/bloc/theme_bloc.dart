import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState.light()) {
    on<ThemeEvent>((event, emit) {});
    on<_Light>((event, emit) {
      emit(ThemeState.light());
    });
    on<_Dark>((event, emit) {
      emit(ThemeState.dark());
    });
  }
}
