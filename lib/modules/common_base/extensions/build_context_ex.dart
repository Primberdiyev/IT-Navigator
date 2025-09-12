import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/base/base.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/light/light_theme_extensions.dart';

extension BuildContextEx on BuildContext {
  AppThemeExtension get themes =>
      Theme.of(this).extension<AppThemeExtension>() ?? lightThemeExtension;

  void showSnackBarText(String text) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(text),
        behavior: SnackBarBehavior.floating,
        backgroundColor: themes.colors.buttonColors.bgColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
