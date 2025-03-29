import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_personal/app/bloc/bloc_app.dart';

/// {@template IconChangeTheme}
/// Icon for change theme in the app.
/// {@endtemplate}
class IconChangeTheme extends StatelessWidget {
  /// {@macro IconChangeTheme}
  const IconChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocApp, BlocAppState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => context.read<BlocApp>().add(
                    BlocAppEventToggleTheme(
                      themeDark: !state.themeDark,
                    ),
                  ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                  child: Icon(
                    state.themeDark
                        ? Icons.light_mode_rounded
                        : Icons.dark_mode_outlined,
                    key: ValueKey<bool>(
                      state.themeDark,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
