part of 'bloc_dashboard.dart';

@immutable

/// {@template BlocDashboardEvent}
/// Events for [BlocDashboard]
/// {@endtemplate}
abstract class BlocDashboardEvent {
  /// {@macro BlocDashboardEvent}
  const BlocDashboardEvent();
}

/// {@template BlocDashboardGetReposEvent}
/// Event to get repos from github.
/// {@endtemplate}
class BlocDashboardGetReposEvent extends BlocDashboardEvent {
  /// {@macro BlocDashboardGetReposEvent}
  const BlocDashboardGetReposEvent();
}
