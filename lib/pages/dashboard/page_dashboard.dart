import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_personal/pages/dashboard/view/view.dart';

/// {@template PageDashboard}
/// Page Dashboard.
/// {@endtemplate}
@RoutePage()
class PageDashboard extends StatelessWidget {
  /// {@macro PageDashboard}
  const PageDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewDashboard();
  }
}
