import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/base/app_colors.dart';
import 'package:it_navigator/modules/common_base/design_system/themes/base/app_theme_heading_text_styles.dart';

class LightThemeHeadingTextStyles extends AppThemeHeadingTextStyles {
  const LightThemeHeadingTextStyles();
  @override
  TextStyle get head1 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 48,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get head2 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get head3 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get head4 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get head5 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get head6 => TextStyle(
        color: AppColors.greyScale900,
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
}
