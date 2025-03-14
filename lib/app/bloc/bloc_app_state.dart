part of 'bloc_app.dart';

/// {@template BlocAppState}
/// State for [BlocApp]
/// {@endtemplate}
abstract class BlocAppState {
  /// {@macro BlocAppState}

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

  /// theme of the app
  final ThemeData theme;

  /// theme is dark
  final bool themeDark;

  List<Object> get props => [
        themeDark,
        theme,
      ];
}

/// {@template BlocAppStateInitial}
/// Initial state for [BlocApp]
/// {@endtemplate}
class BlocAppStateInitial extends BlocAppState {
  /// {@macro BlocAppStateInitial}
  const BlocAppStateInitial(ThemeData theme) : super._(theme: theme);
}

/// {@template BlocAppUpdatedState}
/// Updated state for [BlocApp]
/// {@endtemplate}
class BlocAppUpdatedState extends BlocAppState {
  /// {@macro BlocAppUpdatedState}
  BlocAppUpdatedState.desde(
    super.otro, {
    super.themeDark,
    super.theme,
  }) : super.desde();
}
