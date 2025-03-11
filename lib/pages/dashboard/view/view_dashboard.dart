import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class ViewDashboard extends StatefulWidget {
  const ViewDashboard({super.key});

  @override
  State<ViewDashboard> createState() => _ViewDashboardState();
}

class _ViewDashboardState extends State<ViewDashboard> {
  ///
  final ScrollController _scrollController = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DefaultTextStyle(
      style: TextStyle(
        color: colors.onSurface,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            AppBarCustom(scrollController: _scrollController),
            BodyDashBoard(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
