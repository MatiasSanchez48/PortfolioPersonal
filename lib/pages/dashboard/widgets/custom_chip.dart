import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template CustomChip}
/// Custom Chip for Dashboard
/// {@endtemplate}
class CustomChip extends StatelessWidget {
  /// {@macro CustomChip}
  const CustomChip({
    required this.title,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  /// Title of the Chip
  final String title;

  /// Color of the Chip background.
  final Color? backgroundColor;

  /// Color of the Chip text.
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
