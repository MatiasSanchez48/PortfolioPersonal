import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_personal/theme/theme_default.dart';
import 'package:portfolio_personal/utils/utils.dart';

part 'bloc_app_event.dart';
part 'bloc_app_state.dart';

/// {@template BlocApp}
/// Bloc for App
/// {@endtemplate}

class BlocApp extends Bloc<BlocAppEvent, BlocAppState> {
  /// {@macro BlocApp}
  BlocApp() : super(BlocAppStateInitial(themeDefault)) {
    on<BlocAppEventToggleTheme>(_chageTheme);
    on<BlocAppEventChangeLenguage>(_onChangeLenguage);
  }

  /// Change theme
  void _chageTheme(
    BlocAppEventToggleTheme event,
    Emitter<BlocAppState> emit,
  ) =>
      emit(
        BlocAppUpdatedState.from(
          state,
          theme: event.themeDark ? themeDark : themeDefault,
          themeDark: event.themeDark,
        ),
      );
  void _onChangeLenguage(
    BlocAppEventChangeLenguage event,
    Emitter<BlocAppState> emit,
  ) =>
      emit(BlocAppUpdatedState.from(state, lenguage: event.lenguage));
}
