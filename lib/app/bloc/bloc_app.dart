import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_personal/theme/theme_default.dart';

part 'bloc_app_event.dart';
part 'bloc_app_state.dart';

class BlocApp extends Bloc<BlocAppEvent, BlocAppState> {
  BlocApp() : super(BlocAppStateInitial(themeDefault)) {
    on<BlocAppEventToggleTheme>(_chageTheme);
  }

  Future<void> _chageTheme(
    BlocAppEventToggleTheme event,
    Emitter<BlocAppState> emit,
  ) async {
    if (event.themeDark) {
      emit(
        BlocAppUpdatedState.desde(
          state,
          theme: themeDark,
          themeDark: event.themeDark,
        ),
      );
    } else {
      emit(
        BlocAppUpdatedState.desde(
          state,
          theme: themeDefault,
          themeDark: event.themeDark,
        ),
      );
    }
  }
}
