import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/app_localizations.dart';
import 'common_base/common_base.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    final delegate = _appRouter.delegate();
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(delegate.controller),
      theme: ThemeData(
        extensions: [lightThemeExtension],
        scaffoldBackgroundColor:
            lightThemeExtension.colors.backgroundColors.scaffoldColor,
      ),
      localizationsDelegates: AppLocalizations.delegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
