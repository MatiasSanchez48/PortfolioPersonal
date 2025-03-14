import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

/// {@template BodyDashBoard}
/// Body for Dashboard page.
/// {@endtemplate}
class BodyDashBoard extends StatelessWidget {
  /// {@macro BodyDashBoard}
  const BodyDashBoard({
    required this.scrollController,
    super.key,
  });

  /// Scroll controller to scroll to different sections.
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            height: context.height,
            color: colors.surface,
            child: HeroCustom(
              scrollController: scrollController,
            ),
          ),
          ColoredBox(
            color: colors.tertiary,
            child: const AboutMe(),
          ),
          ColoredBox(
            color: colors.surface,
            child: const Projects(),
          ),
          ColoredBox(
            color: colors.tertiary,
            child: const ContactMe(),
          ),
          ColoredBox(
            color: colors.surface,
            child: Footer(
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}
