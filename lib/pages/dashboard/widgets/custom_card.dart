import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/l10n/l10n.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/utils.dart';

/// {@template CustomCard}
/// Custom card for project card.
/// {@endtemplate}
class CustomCard extends StatelessWidget {
  /// {@macro CustomCard}
  const CustomCard({
    required this.ulrImage,
    required this.titleProject,
    required this.descriptionProject,
    required this.listSkills,
    required this.linkCode,
    super.key,
  });

  /// Url image of project card.
  final String ulrImage;

  /// Title or name of project card.
  final String titleProject;

  /// Description of project card.
  final String descriptionProject;

  /// List of skills of project card.
  final List<String> listSkills;

  /// Link of code from github of project card.
  final String linkCode;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;

    return SizedBox(
      width: 500,
      child: Card(
        elevation: 5,
        color: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: colors.onSurfaceOpacity20,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              ulrImage,
              height: 300,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : const Center(child: CircularProgressIndicator()),
              errorBuilder: (context, error, stackTrace) => Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  color: colors.onSurfaceOpacity20,
                ),
                height: 300,
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: colors.tertiary,
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                        opacity: .2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleProject,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    descriptionProject,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurfaceOpacity20,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    children: [
                      ...listSkills.map(
                        (skill) => CustomChip(
                          title: skill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 25),
                CustomTextButton(
                  title: l10n.commonCodeText,
                  icon: FontAwesome.github,
                  onPressed: () async => lauchUrl(
                    'https://github.com/MatiasSanchez48/$linkCode',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
