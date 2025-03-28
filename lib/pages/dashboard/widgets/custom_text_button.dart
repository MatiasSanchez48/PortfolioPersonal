import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template CustomTextButton}
/// Custom Text Button for App.
/// {@endtemplate}
class CustomTextButton extends StatefulWidget {
  /// {@macro CustomTextButton}
  const CustomTextButton({
    required this.title,
    this.icon,
    this.onPressed,
    this.background,
    this.themeButton,
    super.key,
  });

  /// Title of button.
  final String title;

  /// Icon of button.
  final IconData? icon;

  /// Function of button.
  final VoidCallback? onPressed;

  /// Background of button.
  final Color? background;

  /// Theme of button.
  final Color? themeButton;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(widget.background ?? colors.surface),
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
        onPressed: widget.onPressed,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 200),
          scale: _isHovered ? 1.15 : 1.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.icon != null) ...[
                  Icon(
                    widget.icon,
                    color: widget.themeButton ?? colors.onSurface,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                ],
                Text(
                  widget.title,
                  style: TextStyle(
                    color: widget.themeButton ?? colors.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
