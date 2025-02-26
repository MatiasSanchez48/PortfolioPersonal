part of 'bloc_app.dart';

sealed class BlocAppEvent {
  const BlocAppEvent();

  List<Object> get props => [];
}

class BlocAppEventToggleTheme extends BlocAppEvent {
  const BlocAppEventToggleTheme({this.themeDark = false});

  final bool themeDark;
}
