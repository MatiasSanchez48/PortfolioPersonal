import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    required this.title,
    super.key,
  });

  ///
  final String title;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Chip(
      label: Text(
        title,
        style: TextStyle(color: colors.onSurface),
      ),
      backgroundColor: colors.tertiary,
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
