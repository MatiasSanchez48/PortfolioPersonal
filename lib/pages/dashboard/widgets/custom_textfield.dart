import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label,
    super.key,
    this.maxLines = 1,
  });

  ///
  final String label;

  ///
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return TextField(
      maxLines: maxLines,
      style: TextStyle(
        color: colors.onSurface,
        fontSize: 12,
      ),
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.onSurfaceOpacity20),
        ),
        filled: true,
        fillColor: colors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
      ),
    );
  }
}
