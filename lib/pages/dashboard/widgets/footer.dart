import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/utils.dart';

class Footer extends StatelessWidget {
  const Footer({
    required this.scrollController,
    super.key,
  });

  ///
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: DefaultTextStyle(
        style: TextStyle(
          color: colors.onSurface,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: context.fontFamily,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PortFolio.',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Creando experiencias digitales excepcionales con'
                      ' pasión y \ndedicación.',
                      style: TextStyle(
                        color: colors.onSurfaceOpacity50,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enlaces',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => scroll(
                        scrollController,
                        scrollController.position.minScrollExtent,
                      ),
                      child: Text(
                        'Inicio',
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.onSurfaceOpacity50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => scroll(
                        scrollController,
                        context.height * .85,
                      ),
                      child: Text(
                        'Sobre Mi',
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.onSurfaceOpacity50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => scroll(
                        scrollController,
                        context.height * 1.63,
                      ),
                      child: Text(
                        'Proyectos',
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.onSurfaceOpacity50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => scroll(
                        scrollController,
                        context.height * 2.48,
                      ),
                      child: Text(
                        'Contacto',
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.onSurfaceOpacity50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Redes Sociales',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20),
                    SocialIcons(),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: colors.onSurfaceOpacity50,
            ),
            const SizedBox(height: 30),
            Text(
              '© 2025 Matias Sanchez. Todos los derechos reservados.',
              style: TextStyle(
                fontSize: 12,
                color: colors.onSurfaceOpacity50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
