import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

class CardCustomAboutMe extends StatelessWidget {
  const CardCustomAboutMe({
    required this.iconData,
    required this.title,
    required this.description,
    super.key,
  });

  ///
  final IconData iconData;

  ///
  final String title;

  ///
  final String description;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SizedBox(
      width: 400,
      height: 220,
      child: Card(
        elevation: 5,
        color: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colors.onSurfaceOpacity20,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              Icon(
                iconData,
                color: colors.onSurface,
                size: 30,
              ),
              const SizedBox(height: 30),
              Text(
                title,
                style: TextStyle(
                  color: colors.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: colors.onSurfaceOpacity20,
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
