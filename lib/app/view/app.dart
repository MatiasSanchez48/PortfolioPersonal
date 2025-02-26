import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_personal/app/auto_route/auto_route.dart';
import 'package:portfolio_personal/app/bloc/bloc_app.dart';
import 'package:portfolio_personal/l10n/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocApp>(
      create: (_) => BlocApp(),
      child: const ViewApp(),
    );
  }
}

class ViewApp extends StatefulWidget {
  const ViewApp({super.key});

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocApp, BlocAppState>(
      builder: (context, state) => MaterialApp.router(
        theme: state.theme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
