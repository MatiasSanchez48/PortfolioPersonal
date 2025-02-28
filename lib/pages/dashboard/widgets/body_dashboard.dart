import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/context.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class BodyDashBoard extends StatelessWidget {
  const BodyDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            height: context.height,
            color: colors.surface,
            child: const HeroCustom(),
          ),

          /// About me
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            color: colors.tertiary,
            child: const AboutMe(),
          ),

          // /// projects
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   color: Colors.black54,
          // ),

          // /// Contact me
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   color: Colors.black87,
          // ),

          // /// Footer
          // Container(
          //   height: MediaQuery.of(context).size.height / 2,
          //   color: Colors.black87,
          // ),
        ],
      ),
    );
  }
}

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
            style: TextStyle(color: colors.onSurfaceOpacity20),
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
          const Spacer(),
        ],
      ),
    );
  }
}

class CardCustomAboutMe extends StatelessWidget {
  const CardCustomAboutMe({
    required this.iconData,
    required this.title,
    required this.description,
    super.key,
  });

  ///
  final IconData iconData;

  ///
  final String title;

  ///
  final String description;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SizedBox(
      width: 400,
      height: 220,
      child: Card(
        elevation: 5,
        color: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colors.onSurfaceOpacity20,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              Icon(
                iconData,
                color: colors.onSurface,
                size: 30,
              ),
              const SizedBox(height: 30),
              Text(
                title,
                style: TextStyle(
                  color: colors.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: colors.onSurfaceOpacity20,
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
