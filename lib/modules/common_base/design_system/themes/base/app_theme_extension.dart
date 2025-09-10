import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/base/app_theme_text_styles.dart';

import 'app_theme_colors.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.colors,
    required this.textStyles,
  });

  final AppThemeColors colors;
  final AppThemeTextStyles textStyles;

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    AppThemeColors? colors,
    AppThemeTextStyles? textStyles,
  }) =>
      AppThemeExtension(
        colors: colors ?? this.colors,
        textStyles: textStyles ?? this.textStyles,
      );

  @override
  ThemeExtension<AppThemeExtension> lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;
    return AppThemeExtension(
      colors: colors,
      textStyles: textStyles,
    );
  }
}
