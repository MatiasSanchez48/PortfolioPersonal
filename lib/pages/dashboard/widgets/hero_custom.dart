import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/l10n/l10n.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/functions/functions.dart';

/// {@template HeroCustom}
/// Hero for App.
/// {@endtemplate}
class HeroCustom extends StatelessWidget {
  /// {@macro HeroCustom}
  const HeroCustom({
    required this.scrollController,
    super.key,
  });

  /// Scroll Controller to scroll to the next section.
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: colors.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: context.fontFamily,
          letterSpacing: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              l10n.heroPageWelcome,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              l10n.heroPageDescription,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 45,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              l10n.heroPageDescriptionPartTwo,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: colors.onSurfaceOpacity20,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton(
                  title: l10n.heroPageShowProjects,
                  onPressed: () => scroll(
                    scrollController,
                    context.height * 1.63,
                  ),
                  icon: Icons.arrow_right_alt_rounded,
                  background: colors.onSurface,
                  themeButton: colors.surface,
                ),
                const SizedBox(width: 10),
                CustomTextButton(
                  title: l10n.heroPageDowloadCV,
                  onPressed: openPDF,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const SocialIcons(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
