part of 'bloc_dashboard.dart';

@immutable
sealed class BlocDashboardEvent {
  const BlocDashboardEvent();
}

class BlocDashboardGetReposEvent extends BlocDashboardEvent {
  const BlocDashboardGetReposEvent();
}
