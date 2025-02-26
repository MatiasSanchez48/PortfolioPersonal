import 'package:flutter/material.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      titleSpacing: 100,
      title: InkWell(
        onTap: () {
          // Navegar al home si es necesario
        },
        child: const Text(
          'PortFolio.',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Row(
          children: [
            ButtonAppBar(onTap: () {}, text: 'Inicio'),
            ButtonAppBar(onTap: () {}, text: 'Sobre Mi'),
            ButtonAppBar(onTap: () {}, text: 'Contacto'),
            ButtonAppBar(onTap: () {}, text: 'Experiencia'),
            ButtonAppBar(onTap: () {}, text: 'Blog'),
            const IconChangeTheme(),
          ],
        ),
        const SizedBox(width: 100),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200);
}
