import 'package:flutter/material.dart';
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
            height: MediaQuery.of(context).size.height / 1.6,
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

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 100),
        const Text('Proyectos Destacados'),
        const SizedBox(height: 20),
        const Text(
          'Una selección de mis trabajos más recientes e innovadores'
          ' en desarrollo web y aplicaciones.',
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 5,
              color: colors.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: colors.onSurfaceOpacity20,
                  width: 1.5,
                ),
              ),
              child: Column(
                children: [
                  Image.network(
                    'https://es.digitaltrends.com/wp-content/uploads/2023/12/google-chrome.jpeg?fit=720%2C480&p=1',
                    errorBuilder: (context, error, stackTrace) => ColoredBox(
                      color: colors.onSurfaceOpacity20,
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          color: colors.onSurfaceOpacity20,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Column(
                      children: [
                        const Text('E-commerce Platform'),
                        const SizedBox(height: 10),
                        const Text(
                          'Plataforma de comercio electrónico completa con'
                          ' panel de administración, pagos y análisis en'
                          ' tiempo real.',
                        ),
                        const SizedBox(height: 15),
                        Chip(
                          label: const Text('Flutter'),
                          backgroundColor: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(colors.surface),
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
                      const SizedBox(width: 30),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(colors.surface),
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
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
