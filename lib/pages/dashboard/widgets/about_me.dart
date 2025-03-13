import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: context.fontFamily,
        color: colors.onSurface,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Text(
              'About me',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Text(
              'Soy un apasionado desarrollador de software, enfocado en crear '
              'aplicaciones modernas y eficientes. Disfruto resolviendo '
              'problemas del mundo real a través de la tecnología y mejorando'
              ' continuamente mis habilidades.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colors.onSurfaceOpacity20,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Con experiencia en desarrollo móvil'
              ' (Flutter/Dart), tecnologías backend (.NET, MongoDB, SQL),'
              ' desarrollo web (React, HTML, CSS, JavaScript) y desarrollo de'
              ' videojuegos (Unity, C#), siempre me entusiasma aprender y'
              ' crecer como desarrollador.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colors.onSurfaceOpacity20,
              ),
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardCustomAboutMe(
                  iconData: FontAwesome.code,
                  title: '💻 Software Development',
                  descriptions: [
                    'Mobile Development: Flutter, Dart',
                    'Backend: .NET, MongoDB, SQL',
                    'Web Development: React, HTML, CSS, JavaScript',
                    'APIs and Data Consumption: API design and consumption',
                  ],
                ),
                CardCustomAboutMe(
                  iconData: FontAwesome.code_fork,
                  title: '🎮 Game Development',
                  descriptions: [
                    'Game Engines: Unity (C#)',
                    'Game Mechanics: 2D/3D movement, physics, shooting mechanics',
                    'Multiplayer: Basic implementation with Photon/Netcode',
                    'Platforms: PC',
                  ],
                ),
              ],
            ),
            const SizedBox(height: 35),
            Divider(
              height: .1,
              color: colors.onSurfaceOpacity50,
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
