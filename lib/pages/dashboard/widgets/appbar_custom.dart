import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/context.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/functions/functions.dart';

/// {@template AppBarCustom}
/// AppBar to App Logo, About me, Projects, Contact,etc.
/// {@endtemplate}
class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  /// {@macro AppBarCustom}
  const AppBarCustom({
    required this.scrollController,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(200);

  /// Scroll controller to scroll to a specific position.
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SliverAppBar(
      pinned: true,
      titleSpacing: 100,
      title: InkWell(
        onTap: () => scroll(
          scrollController,
          scrollController.position.minScrollExtent,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: colors.tertiary,
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage('images/avatar.png'),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              'Matias Sanchez',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: colors.onSurface,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                scrollController.position.minScrollExtent,
              ),
              text: 'Inicio',
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * .9,
              ),
              text: 'Sobre Mi',
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * 1.63,
              ),
              text: 'Proyectos',
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * 2.48,
              ),
              text: 'Contacto',
            ),
            const IconChangeTheme(),
          ],
        ),
        const SizedBox(width: 100),
      ],
    );
  }
}
