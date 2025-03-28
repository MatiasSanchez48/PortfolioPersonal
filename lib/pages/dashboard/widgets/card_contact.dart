import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template CardContact}
/// Card for contact me.
/// {@endtemplate}
class CardContact extends StatefulWidget {
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
  State<CardContact> createState() => _CardContactState();
}

class _CardContactState extends State<CardContact> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 200),
        scale: _isHovered ? 1.05 : 1.0,
        child: AnimatedContainer(
          width: 700,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: colors.onSurfaceOpacity50,
              width: 0.5,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: colors.onSurface,
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ]
                : [],
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                widget.iconData,
                color: colors.onSurface,
                size: 30,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label,
                    style: TextStyle(
                      fontSize: 12,
                      color: colors.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                      .animate(
                        target: _isHovered ? 1.0 : 0.0,
                        onComplete: (controller) => _isHovered
                            ? controller.repeat()
                            : controller.stop(),
                      )
                      .shimmer(
                        color: colors.primary,
                        duration: .8.seconds,
                        delay: 1.seconds,
                      ),
                  const SizedBox(height: 10),
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 12,
                      color: colors.onSurfaceOpacity50,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
