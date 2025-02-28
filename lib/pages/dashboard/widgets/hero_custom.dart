import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class HeroCustom extends StatelessWidget {
  const HeroCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: context.colors.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: context.fontFamily,
          letterSpacing: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text(
              'Bienvenido a mi portafolio',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Transformando ideas en \nexperiencias digitales',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 45,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Desarrollador Full Stack especializado en crear soluciones web\n'
              'innovadoras y experiencias de usuario excepcionales. Con más de'
              ' 5\naños de experiencia en el desarrollo de aplicaciones web'
              ' modernas.\n',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: colors.grey,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.onSurface),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    /// TODO : scroll to projects
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Ver proyectos',
                          style: TextStyle(
                            color: colors.surface,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: colors.surface,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.surface),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: colors.grey,
                          width: .8,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    /// TODO : Download CV
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 13,
                    ),
                    child: Text(
                      'Descargar CV',
                      style: TextStyle(
                        color: colors.onSurface,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const SocialIcons(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
