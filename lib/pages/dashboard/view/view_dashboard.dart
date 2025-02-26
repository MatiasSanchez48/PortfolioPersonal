import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewDashboard extends StatefulWidget {
  const ViewDashboard({super.key});

  @override
  State<ViewDashboard> createState() => _ViewDashboardState();
}

class _ViewDashboardState extends State<ViewDashboard> {
  ///
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const AppBarCustom(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  /// Hero
                  Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                    child: const HeroCustom(),
                  ),

                  // /// About me
                  // Container(
                  //   height: MediaQuery.of(context).size.height,
                  //   color: Colors.black38,
                  // ),

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
            ),
          ],
        ),
      ),
    );
  }
}

class HeroCustom extends StatelessWidget {
  const HeroCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Text('Bienvenido a mi portafolio'),
        const SizedBox(height: 25),
        Text('Transformando ideas en \nexperiencias digitales'),
        const SizedBox(height: 25),
        Text(
          'Desarrollador Full Stack especializado en crear soluciones web\n'
          'innovadoras y experiencias de usuario excepcionales. Con más de'
          ' 5\naños de experiencia en el desarrollo de aplicaciones web'
          ' modernas.\n',
        ),
        const SizedBox(height: 50),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text('Ver proyectos'),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_right_alt_rounded).animate().slideX(
                        begin: 0,
                        end: 0.1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {},
              child: Text('Descargar CV'),
            ),
          ],
        ),
        const SizedBox(height: 50),
        const SocialIconsRow(),
        const Spacer(),
      ],
    );
  }
}

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...RedSocial.values.map(
          (e) => Tooltip(
            message: RedSocial.name(e),
            child: IconButton(
              icon: RedSocial.icon(e),
              onPressed: RedSocial.lunchRedSocial(e),
            ),
          ),
        ),
      ],
    );
  }
}

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

  static Icon icon(RedSocial redSocial) => switch (redSocial) {
        RedSocial.gitHub => const Icon(FontAwesome.github),
        RedSocial.gmail => const Icon(Icons.email),
        RedSocial.twitter => const Icon(FontAwesome.twitter),
        RedSocial.itchIo => const Icon(Icons.gamepad),
        RedSocial.patreon => const Icon(FontAwesome.gift),
      };

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
