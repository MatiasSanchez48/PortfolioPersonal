import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template CardContact}
/// Card for contact me.
/// {@endtemplate}
class CardContact extends StatelessWidget {
  /// {@macro CardContact}
  const CardContact({
    required this.iconData,
    required this.label,
    required this.text,
    super.key,
  });

  /// Icon to display.
  final IconData iconData;

  /// Label to display under icon.
  final String label;

  /// text to display under label.
  final String text;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: colors.onSurfaceOpacity20,
          width: .5,
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: colors.onSurface,
            size: 30,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: colors.onSurface,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  color: colors.onSurfaceOpacity50,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
