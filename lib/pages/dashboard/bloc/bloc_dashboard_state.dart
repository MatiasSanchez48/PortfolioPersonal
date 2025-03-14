part of 'bloc_dashboard.dart';

@immutable

/// {@template BlocDashboardState}
/// State for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardState {
  /// {@macro BlocDashboardState}
  const BlocDashboardState._({
    this.repos = const [],
  });

  BlocDashboardState.from(
    BlocDashboardState state, {
    List<Project>? repos,
  }) : this._(
          repos: repos ?? state.repos,
        );

  /// List of [Project]
  final List<Project> repos;

  List<Object> get props => [];
}

/// {@template BlocDashboardStateInitial}
/// State `initial` for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardStateInitial extends BlocDashboardState {
  /// {@macro BlocDashboardStateInitial}
  const BlocDashboardStateInitial() : super._();
}

/// {@template BlocDashboardStateLoading}
/// State `loading` for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardStateLoading extends BlocDashboardState {
  /// {@macro BlocDashboardStateLoading}
  BlocDashboardStateLoading.from(super.state) : super.from();
}

/// {@template BlocDashboardStateLoaded}
/// State `loaded` for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardStateLoaded extends BlocDashboardState {
  /// {@macro BlocDashboardStateLoaded}
  BlocDashboardStateLoaded.from(super.state, this.repos) : super.from();

  /// List of [Project] to display
  @override
  final List<Project> repos;
}

/// {@template BlocDashboardStateError}
/// State `error` for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardStateError extends BlocDashboardState {
  /// {@macro BlocDashboardStateError}
  BlocDashboardStateError.from(super.state, this.message) : super.from();

  /// Error message to display
  final String message;
}
