import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class BodyDashBoard extends StatelessWidget {
  const BodyDashBoard({
    required this.scrollController,
    super.key,
  });

  ///
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
          Container(
            height: context.height / 1.6,
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
