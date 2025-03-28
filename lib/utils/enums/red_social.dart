import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/utils/utils.dart';

/// {@template RepoGithub}
/// Enum for Red Social of App.
/// {@endtemplate}
enum RedSocial {
  gitHub,
  gmail,
  linkedIn,
  itchIo;

  /// get name of red social.
  static String name(RedSocial redSocial) => switch (redSocial) {
        RedSocial.gitHub => 'GitHub',
        RedSocial.gmail => 'Gmail',
        RedSocial.itchIo => 'Itch.io',
        RedSocial.linkedIn => 'Linkedin',
      };

  /// get icon of red social.
  static Icon icon(RedSocial redSocial, Color color) {
    return switch (redSocial) {
      RedSocial.linkedIn => Icon(
          FontAwesome.linkedin,
          color: color,
        ),
      RedSocial.gitHub => Icon(
          FontAwesome.github,
          color: color,
        ),
      RedSocial.gmail => Icon(
          Icons.email,
          color: color,
        ),
      RedSocial.itchIo => Icon(
          Icons.gamepad,
          color: color,
        ),
    };
  }

  /// lunch red social on web.
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
