part of 'bloc_dashboard.dart';

@immutable
class BlocDashboardState {
  const BlocDashboardState._({
    this.repos = const [],
  });

  BlocDashboardState.from(
    BlocDashboardState state, {
    List<Project>? repos,
  }) : this._(
          repos: repos ?? state.repos,
        );

  ///
  final List<Project> repos;

  List<Object> get props => [];
}

class BlocDashboardStateInitial extends BlocDashboardState {
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
