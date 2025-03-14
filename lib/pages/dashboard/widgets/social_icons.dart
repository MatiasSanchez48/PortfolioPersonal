import 'package:flutter/material.dart';
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
      children: [
        ...RedSocial.values.map(
          (e) => Tooltip(
            message: RedSocial.name(e),
            child: IconButton(
              iconSize: 25,
              icon: RedSocial.icon(e, context),
              onPressed: RedSocial.lunchRedSocial(e),
            ),
          ),
        ),
      ],
    );
  }
}
