import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template HoverText}
/// Text to hover in button
/// {@endtemplate}
class HoverText extends StatefulWidget {
  /// {@macro HoverText}
  const HoverText({
    required this.text,
    required this.onTap,
    super.key,
  });

  /// text to show
  final String text;

  /// On Tap to click in button
  final VoidCallback onTap;

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  ///
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SizedBox(
      width: 150,
      height: 20,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHover = true),
        onExit: (_) => setState(() => _isHover = false),
        child: InkWell(
          onTap: widget.onTap,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: _isHover ? 16 : 12,
              color: colors.onSurfaceOpacity50,
              fontWeight: FontWeight.w500,
              fontFamily: context.fontFamily,
            ),
            child: Text(widget.text)
                .animate(
                  target: _isHover ? 1 : 0,
                  onComplete: (controller) =>
                      _isHover ? controller.repeat() : controller.stop(),
                )
                .shimmer(
                  color: colors.primary,
                  delay: .5.seconds,
                  duration: 1.seconds,
                ),
          ),
        ),
      ),
    );
  }
}
