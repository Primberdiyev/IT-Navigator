import 'package:flutter/material.dart';
import 'package:it_navigator/app_localizations.dart';
import 'package:it_navigator/common_base/design_system/themes/light/light_theme_extensions.dart';
import 'auth/auth.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: [lightThemeExtension],
        scaffoldBackgroundColor:
            lightThemeExtension.colors.backgroundColors.scaffoldColor,
      ),
      localizationsDelegates: AppLocalizations.delegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SplashPage(),
    );
  }
}
