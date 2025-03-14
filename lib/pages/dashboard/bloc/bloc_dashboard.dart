import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_personal/models/models.dart';

import 'package:portfolio_personal/repository/repository.dart';

part 'bloc_dashboard_event.dart';
part 'bloc_dashboard_state.dart';

/// {@template BlocDashboard}
/// Bloc for Dashboard page
/// {@endtemplate}
class BlocDashboard extends Bloc<BlocDashboardEvent, BlocDashboardState> {
  /// {@macro BlocDashboard}
  BlocDashboard() : super(const BlocDashboardStateInitial()) {
    on<BlocDashboardGetReposEvent>(_onGetRepos);
  }

  /// Get repos from github.
  Future<void> _onGetRepos(
    BlocDashboardGetReposEvent event,
    Emitter<BlocDashboardState> emit,
  ) async {
    try {
      emit(BlocDashboardStateLoading.from(state));

      final repos = await RepoGithub().getRepositories();

      emit(BlocDashboardStateLoaded.from(state, repos));
    } catch (e) {
      emit(BlocDashboardStateError.from(state, e.toString()));
    }
  }
}
