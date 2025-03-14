import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    required this.title,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  ///
  final String title;

  ///
  final Color? backgroundColor;

  ///
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Chip(
      label: Text(
        title,
        style: TextStyle(color: textColor ?? colors.onSurface),
      ),
      backgroundColor: backgroundColor ?? colors.tertiary,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: colors.surface,
          width: .5,
        ),
      ),
    );
  }
}
