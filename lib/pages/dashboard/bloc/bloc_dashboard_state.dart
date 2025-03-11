part of 'bloc_dashboard.dart';

@immutable
sealed class BlocDashboardState {
  const BlocDashboardState._({
    this.repos = const [],
  });

  BlocDashboardState.desde(
    BlocDashboardState state, {
    List<dynamic>? repos,
  }) : this._(
          repos: repos ?? state.repos,
        );

  ///
  final List<dynamic> repos;

  List<Object> get props => [];
}

class BlocDashboardStateInitial extends BlocDashboardState {
  const BlocDashboardStateInitial() : super._();
}

class BlocDashboardStateLoading extends BlocDashboardState {
  const BlocDashboardStateLoading() : super._();
}

class BlocDashboardStateLoaded extends BlocDashboardState {
  const BlocDashboardStateLoaded(this.repos) : super._(repos: repos);

  ///
  @override
  final List<dynamic> repos;
}

class BlocDashboardStateError extends BlocDashboardState {
  const BlocDashboardStateError(this.message) : super._();

  ///
  final String message;
}
