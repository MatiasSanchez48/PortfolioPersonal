import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';

/// {@template ButtonAppBar}
/// Button for AppBar Custom go to diferent pages
/// {@endtemplate}
class ButtonAppBar extends StatefulWidget {
  /// {@macro ButtonAppBar}
  const ButtonAppBar({
    required this.text,
    required this.onTap,
    super.key,
  });

  ///Text to show in the button
  final String text;

  ///Function to call when the button is tapped.
  final VoidCallback onTap;

  @override
  State<ButtonAppBar> createState() => _ButtonAppBarState();
}

class _ButtonAppBarState extends State<ButtonAppBar> {
  ///State for hover the button.
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onHover: (value) => setState(() => _hover = value),
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: _hover
                  ? colors.onSurfaceOpacity50
                  : colors.onSurfaceOpacity20,
            ),
          ),
        ),
      ),
    );
  }
}
