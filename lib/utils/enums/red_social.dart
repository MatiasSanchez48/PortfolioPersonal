import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/utils/utils.dart';

enum RedSocial {
  gitHub,
  gmail,
  linkedIn,
  itchIo;

  static String name(RedSocial redSocial) => switch (redSocial) {
        RedSocial.gitHub => 'GitHub',
        RedSocial.gmail => 'Gmail',
        RedSocial.itchIo => 'Itch.io',
        RedSocial.linkedIn => 'Linkedin',
      };

  static Icon icon(RedSocial redSocial, BuildContext context) {
    final colors = context.colors;

    return switch (redSocial) {
      RedSocial.linkedIn => Icon(
          FontAwesome.linkedin,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.gitHub => Icon(
          FontAwesome.github,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.gmail => Icon(
          Icons.email,
          color: colors.onSurfaceOpacity20,
        ),
      RedSocial.itchIo => Icon(
          Icons.gamepad,
          color: colors.onSurfaceOpacity20,
        ),
    };
  }

  static void Function()? lunchRedSocial(RedSocial redSocial) =>
      switch (redSocial) {
        RedSocial.linkedIn => () =>
            lauchUrl('https://www.linkedin.com/in/matias-sanchez-8a5219252/'),
        RedSocial.gitHub => () =>
            lauchUrl('https://github.com/MatiasSanchez48'),
        RedSocial.gmail => () => openEmail('sanchezmati48@gmail.com'),
        RedSocial.itchIo => () => lauchUrl('https://matiassanchez48.itch.io'),
      };
}
