part of 'bloc_app.dart';

/// {@template BlocAppState}
/// State for [BlocApp]
/// {@endtemplate}
abstract class BlocAppState {
  /// {@macro BlocAppState}

  const BlocAppState._({
    required this.theme,
    this.lenguage = Lenguages.es,
    this.themeDark = false,
  });

  BlocAppState.from(
    BlocAppState otro, {
    ThemeData? theme,
    bool? themeDark,
    Lenguages? lenguage,
  }) : this._(
          themeDark: themeDark ?? otro.themeDark,
          lenguage: lenguage ?? otro.lenguage,
          theme: theme ?? otro.theme,
        );

  /// theme of the app
  final ThemeData theme;

  /// theme is dark
  final bool themeDark;

  /// lenguage of the app.
  final Lenguages lenguage;

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
  BlocAppUpdatedState.from(
    super.otro, {
    super.lenguage,
    super.themeDark,
    super.theme,
  }) : super.from();
}
