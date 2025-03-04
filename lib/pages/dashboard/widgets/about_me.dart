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
            'Con más de 5 años de experiencia en desarrollo web, me apasiona'
            ' crear soluciones\ndigitales que combinen funcionalidad y diseño.'
            ' Mi enfoque se centra en la construcción de \naplicaciones web'
            ' modernas y escalables.',
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
                title: 'Desarrollo Frontend',
                description:
                    'Experiencia en React, Next.js, y TypeScript creando '
                    'interfaces modernas y responsivas.',
              ),
              CardCustomAboutMe(
                iconData: FontAwesome.code_fork,
                title: 'Desarrollo Backend',
                description:
                    'Construcción de APIs robustas y escalables con Node.js, '
                    'Python y bases de datos SQL/NoSQL.',
              ),
              CardCustomAboutMe(
                iconData: FontAwesome.paint_brush,
                title: 'Diseño UI/UX',
                description: 'Creación de experiencias de usuario intuitivas y '
                    'atractivas con atención al detalle.',
              ),
              CardCustomAboutMe(
                iconData: FontAwesome.magic,
                title: 'Optimización',
                description: 'Mejora del rendimiento y la accesibilidad para'
                    ' experiencias web excepcionales..',
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
