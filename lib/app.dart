import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/app_localizations.dart';
import 'package:it_navigator/modules/common_base/di/di.dart';
import 'modules/common_base/common_base.dart';

class App extends StatefulWidget {
  const App({super.key, required this.module});
  final CoreDiModule module;
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
      debugShowCheckedModeBanner: false,
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
