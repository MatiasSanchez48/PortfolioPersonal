import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/functions/functions.dart';

class HeroCustom extends StatelessWidget {
  const HeroCustom({
    required this.scrollController,
    super.key,
  });

  ///
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: colors.onSurface,
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
                color: colors.onSurfaceOpacity20,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton(
                  title: 'Ver proyectos',
                  onPressed: () => scroll(
                    scrollController,
                    context.height * 1.63,
                  ),
                  icon: Icons.arrow_right_alt_rounded,
                  background: colors.onSurface,
                  themeButton: colors.surface,
                ),
                const SizedBox(width: 10),
                const CustomTextButton(
                  title: 'Descargar CV',
                  onPressed: openPDF,
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
