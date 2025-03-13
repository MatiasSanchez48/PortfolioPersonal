import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_personal/pages/dashboard/view/view.dart';

@RoutePage()
class PageDashboard extends StatelessWidget {
  const PageDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewDashboard();
  }
}
