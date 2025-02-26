import 'package:flutter/material.dart';

class ButtonAppBar extends StatefulWidget {
  const ButtonAppBar({
    required this.text,
    required this.onTap,
    super.key,
  });

  ///
  final String text;

  ///
  final VoidCallback onTap;

  @override
  State<ButtonAppBar> createState() => _ButtonAppBarState();
}

class _ButtonAppBarState extends State<ButtonAppBar> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
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
              color: _hover ? Colors.black87 : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
