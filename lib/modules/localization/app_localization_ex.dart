import 'package:flutter/material.dart';
import 'package:it_navigator/modules/localization/generated/localization.dart';

extension AppLocalizationEx on BuildContext {
  L10n get locale => L10n.of(this);
}
