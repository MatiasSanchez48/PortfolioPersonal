import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/utils/utils.dart';

enum RedSocial {
  gitHub,
  gmail,
  twitter,
  patreon,
  itchIo;

  static String name(RedSocial redSocial) => switch (redSocial) {
        RedSocial.gitHub => 'GitHub',
        RedSocial.gmail => 'Gmail',
        RedSocial.twitter => 'Twitter',
        RedSocial.itchIo => 'Itch.io',
        RedSocial.patreon => 'Patreon',
      };

  static Icon icon(RedSocial redSocial, BuildContext context) {
    final colors = context.colors;

    return switch (redSocial) {
      RedSocial.gitHub => Icon(
          FontAwesome.github,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.gmail => Icon(
          Icons.email,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.twitter => Icon(
          FontAwesome.twitter,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.itchIo => Icon(
          Icons.gamepad,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.patreon => Icon(
          FontAwesome.gift,
          color: colors.onSurfaceOpacity20,
        ),
    };
  }

  static void Function()? lunchRedSocial(RedSocial redSocial) =>
      switch (redSocial) {
        RedSocial.gitHub => () =>
            lauchUrl('https://github.com/MatiasSanchez48'),
        RedSocial.gmail => () => openEmail('sanchezmati48@gmail.com'),
        RedSocial.twitter => () => lauchUrl('https://x.com/SanchezMatias48'),
        RedSocial.itchIo => () => lauchUrl('https://matiassanchez48.itch.io'),
        RedSocial.patreon => () =>
            lauchUrl('https://www.patreon.com/c/MatiasSanchez48'),
      };
}
