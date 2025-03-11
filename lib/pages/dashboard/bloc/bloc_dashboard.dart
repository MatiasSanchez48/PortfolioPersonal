import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:portfolio_personal/repository/repository.dart';

part 'bloc_dashboard_event.dart';
part 'bloc_dashboard_state.dart';

class BlocDashboard extends Bloc<BlocDashboardEvent, BlocDashboardState> {
  BlocDashboard() : super(const BlocDashboardStateInitial()) {
    on<BlocDashboardGetReposEvent>(_onGetRepos);
  }

  Future<void> _onGetRepos(
    BlocDashboardEvent event,
    Emitter<BlocDashboardState> emit,
  ) async {
    try {
      emit(const BlocDashboardStateLoading());

      final repos = await RepoGithub().getRepositories();

      emit(BlocDashboardStateLoaded(repos ?? []));
    } catch (e) {
      emit(BlocDashboardStateError(e.toString()));
    }
  }
}
