part of 'bloc_app.dart';

abstract class BlocAppState {
  const BlocAppState._({
    required this.theme,
    this.themeDark = false,
  });

  BlocAppState.desde(
    BlocAppState otro, {
    ThemeData? theme,
    bool? themeDark,
  }) : this._(
          themeDark: themeDark ?? otro.themeDark,
          theme: theme ?? otro.theme,
        );

  final ThemeData theme;

  final bool themeDark;

  List<Object> get props => [
        themeDark,
        theme,
      ];
}

class BlocAppStateInitial extends BlocAppState {
  const BlocAppStateInitial(ThemeData theme) : super._(theme: theme);
}

class BlocAppUpdatedState extends BlocAppState {
  BlocAppUpdatedState.desde(
    super.otro, {
    super.themeDark,
    super.theme,
  }) : super.desde();
}
