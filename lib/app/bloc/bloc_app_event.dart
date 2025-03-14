part of 'bloc_app.dart';

/// {@template BlocAppEvent}
/// Events for [BlocApp]
/// {@endtemplate}
sealed class BlocAppEvent {
  /// {@macro BlocAppEvent}
  const BlocAppEvent();

  List<Object> get props => [];
}

/// {@template BlocAppEventToggleTheme}
/// Event to toggle theme.
/// {@endtemplate}
class BlocAppEventToggleTheme extends BlocAppEvent {
  /// {@macro BlocAppEventToggleTheme}
  const BlocAppEventToggleTheme({this.themeDark = false});

  /// Theme dark
  final bool themeDark;
}
