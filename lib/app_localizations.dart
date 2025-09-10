import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:it_navigator/modules/localization/localization.dart';

class AppLocalizations {
  const AppLocalizations._();

  static final List<LocalizationsDelegate> delegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    L10n.delegate,
  ];

  static const List<Locale> supportedLocales = L10n.supportedLocales;
}
