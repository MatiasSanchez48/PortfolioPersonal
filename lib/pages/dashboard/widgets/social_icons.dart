import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/utils/enums/enums.dart';

/// {@template SocialIcons}
/// Social Icons for App Dashboard.
/// {@endtemplate}
class SocialIcons extends StatelessWidget {
  /// {@macro SocialIcons}
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: RedSocial.values
          .map((redSocial) => SocialIconButton(redSocial: redSocial))
          .toList(),
    );
  }
}

class SocialIconButton extends StatefulWidget {
  const SocialIconButton({required this.redSocial, super.key});

  ///
  final RedSocial redSocial;
  @override
  _SocialIconButtonState createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Tooltip(
      message: RedSocial.name(widget.redSocial),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedScale(
          duration: const Duration(milliseconds: 200),
          scale: _isHovered ? 1.3 : 1.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors.surface,
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
            child: IconButton(
              iconSize: 25,
              icon: RedSocial.icon(
                widget.redSocial,
                _isHovered ? colors.onSurface : colors.onSurfaceOpacity20,
              ),
              onPressed: RedSocial.lunchRedSocial(widget.redSocial),
            ),
          ),
        ),
      ),
    );
  }
}
