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

/// {@template BlocDashboardState}
/// State for [BlocDashboard]
/// {@endtemplate}
class BlocDashboardStateInitial extends BlocDashboardState {
  /// {@macro BlocDashboardState}
  const BlocDashboardStateInitial() : super._();
}

class BlocDashboardStateLoading extends BlocDashboardState {
  BlocDashboardStateLoading.from(super.state) : super.from();
}

class BlocDashboardStateLoaded extends BlocDashboardState {
  BlocDashboardStateLoaded.from(super.state, this.repos) : super.from();

  ///
  @override
  final List<Project> repos;
}

class BlocDashboardStateError extends BlocDashboardState {
  BlocDashboardStateError.from(super.state, this.message) : super.from();

  ///
  final String message;
}
