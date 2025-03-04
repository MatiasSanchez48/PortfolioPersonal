import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/utils.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.ulrImage,
    required this.titleProject,
    required this.descriptionProject,
    required this.listSkills,
    required this.linkDemo,
    required this.linkCode,
    super.key,
  });

  ///
  final String ulrImage;

  ///
  final String titleProject;

  ///
  final String descriptionProject;

  ///
  final List<String> listSkills;

  ///
  final String linkDemo;

  ///
  final String linkCode;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

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
                  child: Icon(
                    Icons.image_outlined,
                    color: colors.onSurfaceOpacity20,
                    size: 50,
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
                  title: 'Codigo',
                  icon: FontAwesome.github,
                  onPressed: () async => lauchUrl(linkCode),
                ),
                const SizedBox(width: 30),
                CustomTextButton(
                  title: 'Demo',
                  icon: FontAwesome.share_alt,
                  onPressed: () async => lauchUrl(linkDemo),
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
