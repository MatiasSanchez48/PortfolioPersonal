import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_personal/app/bloc/bloc_app.dart';
import 'package:portfolio_personal/extensions/colors_scheme.dart';
import 'package:portfolio_personal/extensions/context.dart';
import 'package:portfolio_personal/l10n/l10n.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/utils.dart';

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
    final l10n = context.l10n;

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
              text: l10n.commonStartText,
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * .9,
              ),
              text: l10n.commonAboutMeText,
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * 1.63,
              ),
              text: l10n.commonProjectsText,
            ),
            ButtonAppBar(
              onTap: () => scroll(
                scrollController,
                context.height * 2.48,
              ),
              text: l10n.commonContactText,
            ),
            const IconChangeTheme(),
            const SizedBox(width: 20),
            SizedBox(
              width: 200,
              height: 100,
              child: BlocBuilder<BlocApp, BlocAppState>(
                builder: (context, state) {
                  return ListTile(
                    trailing: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: DropdownButton<Lenguages>(
                        key: ValueKey<Lenguages>(state.lenguage),
                        value: state.lenguage,
                        onChanged: (Lenguages? newValue) {
                          if (newValue != null) {
                            context.read<BlocApp>().add(
                                  BlocAppEventChangeLenguage(
                                    lenguage: newValue,
                                  ),
                                );
                          }
                        },
                        items: Lenguages.values.map((Lenguages language) {
                          return DropdownMenuItem<Lenguages>(
                            value: language,
                            child: Text(
                              language.name,
                              style: TextStyle(
                                color: colors.onSurfaceOpacity60,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: context.fontFamily,
                              ),
                            ),
                          );
                        }).toList(),
                        icon: Icon(Icons.language, color: colors.onSurface),
                        dropdownColor: colors.surface,
                        elevation: 5,
                        underline: Container(
                          height: 2,
                          color: colors.primary,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(width: 100),
      ],
    );
  }
}
