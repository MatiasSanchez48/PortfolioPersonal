import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.title,
    this.icon,
    this.onPressed,
    this.background,
    this.themeButton,
    super.key,
  });

  ///
  final String title;

  ///
  final IconData? icon;

  ///
  final VoidCallback? onPressed;

  ///
  final Color? background;

  ///
  final Color? themeButton;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(background ?? colors.surface),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: colors.onSurfaceOpacity20,
              width: .8,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: themeButton ?? colors.onSurface,
                size: 18,
              ),
              const SizedBox(width: 10),
            ],
            Text(
              title,
              style: TextStyle(
                color: themeButton ?? colors.onSurface,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
