import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/base/base.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/light/light_theme_extensions.dart';

extension BuildContextEx on BuildContext {
  AppThemeExtension get themes =>
      Theme.of(this).extension<AppThemeExtension>() ?? lightThemeExtension;
}
