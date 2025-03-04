import 'package:flutter/material.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DefaultTextStyle(
      style: TextStyle(
        color: colors.onSurface,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: context.fontFamily,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          const Text('Proyectos Destacados'),
          const SizedBox(height: 20),
          Text(
            'Una selección de mis trabajos más recientes e innovadores'
            ' en desarrollo web y \naplicaciones.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colors.onSurfaceOpacity20,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.spaceAround,

            /// TODO: Cambiar por la lista de proyectos de mi github
            children: [1, 2, 3, 4]
                .take(3)
                .map(
                  (e) => const CustomCard(
                    ulrImage: 'assets/images/Proyecto1.png',
                    titleProject: 'Proyecto 1',
                    descriptionProject:
                        ';ashdahsj dkalsdh as jh alkjd hsakjdhasjk lshkjslhajks dhask hasjkl hlkashdf jkalhljkhgajkl hgfajlkdghajfkh gjkdashf kjahdjkh lkjha jlkah lakjhdjhf lkajhglkafhkjfdhg kljdahg aj lkgljkg agfda kjl',
                    linkDemo: '',
                    linkCode: '',
                    listSkills: [
                      'asd',
                      'asddasadsa',
                      'asdasddsads',
                      'adsasd',
                    ],
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
