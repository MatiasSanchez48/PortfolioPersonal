import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_personal/pages/dashboard/bloc/bloc_dashboard.dart';
import 'package:portfolio_personal/pages/dashboard/view/view.dart';

@RoutePage()
class PageDashboard extends StatelessWidget {
  const PageDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocDashboard>(
      create: (context) =>
          BlocDashboard()..add(const BlocDashboardGetReposEvent()),
      child: const ViewDashboard(),
    );
  }
}
