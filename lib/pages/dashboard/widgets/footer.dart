import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/l10n/l10n.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/utils.dart';

/// {@template Footer}
/// Footer for App.
/// {@endtemplate}
class Footer extends StatelessWidget {
  /// {@macro Footer}
  const Footer({required this.scrollController, super.key});

  /// Scroll Controller to scroll.
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: colors.onSurface,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: context.fontFamily,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PortFolio.',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      l10n.footerPageDescription,
                      style: TextStyle(
                        color: colors.onSurfaceOpacity50,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.commonLinksText,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    HoverText(
                      onTap: () => scroll(
                        scrollController,
                        scrollController.position.minScrollExtent,
                      ),
                      text: l10n.commonStartText,
                    ),
                    const SizedBox(height: 20),
                    HoverText(
                      onTap: () => scroll(
                        scrollController,
                        context.height * .85,
                      ),
                      text: l10n.commonAboutMeText,
                    ),
                    const SizedBox(height: 20),
                    HoverText(
                      onTap: () => scroll(
                        scrollController,
                        context.height * 1.63,
                      ),
                      text: l10n.commonProjectsText,
                    ),
                    const SizedBox(height: 20),
                    HoverText(
                      onTap: () => scroll(
                        scrollController,
                        context.height * 2.48,
                      ),
                      text: l10n.commonContactText,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.commonSocialNetworksText,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    const SocialIcons(),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: colors.onSurfaceOpacity50,
            ),
            const SizedBox(height: 30),
            Text(
              l10n.footerPageAutor,
              style: TextStyle(
                fontSize: 12,
                color: colors.onSurfaceOpacity50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
