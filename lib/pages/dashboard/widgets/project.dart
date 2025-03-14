import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/bloc/bloc_dashboard.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';

/// {@template Projects}
/// Projects section of dashboard.
/// {@endtemplate}
class Projects extends StatelessWidget {
  /// {@macro Projects}
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
          BlocBuilder<BlocDashboard, BlocDashboardState>(
            builder: (context, state) {
              if (state is BlocDashboardStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Wrap(
                spacing: 30,
                alignment: WrapAlignment.spaceAround,
                children: state.repos
                    .take(3)
                    .map(
                      (project) => CustomCard(
                        ulrImage: project.htmlUrl ?? '',
                        titleProject: project.name ?? '',
                        descriptionProject: project.description ?? '...',
                        linkCode: project.name ?? '',
                        listSkills: [project.language ?? ''],
                      ),
                    )
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
