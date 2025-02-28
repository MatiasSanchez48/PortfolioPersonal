import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

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
      RedSocial.gitHub => Icon(FontAwesome.github, color: colors.greyDark),
      RedSocial.gmail => Icon(Icons.email, color: colors.greyDark),
      RedSocial.twitter => Icon(FontAwesome.twitter, color: colors.greyDark),
      RedSocial.itchIo => Icon(Icons.gamepad, color: colors.greyDark),
      RedSocial.patreon => Icon(FontAwesome.gift, color: colors.greyDark),
    };
  }

  static void Function()? lunchRedSocial(RedSocial redSocial) =>
      switch (redSocial) {
        RedSocial.gitHub => () =>
            _lauchUrl('https://github.com/MatiasSanchez48'),
        RedSocial.gmail => () async {
            final emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'sanchezmati48@gmail.com',
              query: Uri.encodeFull(
                'subject=Asunto del correo&body=Contenido del correo',
              ),
            );

            if (await canLaunchUrl(emailLaunchUri)) {
              await launchUrl(emailLaunchUri);
            } else {
              throw Exception('No se puede abrir la aplicación de correo');
            }
          },
        RedSocial.twitter => () => _lauchUrl('https://x.com/SanchezMatias48'),
        RedSocial.itchIo => () => _lauchUrl('https://matiassanchez48.itch.io'),
        RedSocial.patreon => () =>
            _lauchUrl('https://www.patreon.com/c/MatiasSanchez48'),
      };

  static Future<void> _lauchUrl(String linkRedSocial) async {
    final url = Uri.parse(linkRedSocial);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Error al abrir la red social');
    }
  }
}
