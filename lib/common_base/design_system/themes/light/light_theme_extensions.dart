import 'package:it_navigator/common_base/common_base.dart';
import 'package:it_navigator/common_base/design_system/themes/base/app_theme_text_styles.dart';
import 'package:it_navigator/common_base/design_system/themes/light/light_bg_colors.dart';
import 'package:it_navigator/common_base/design_system/themes/light/light_theme_body_text_styles.dart';
import 'package:it_navigator/common_base/design_system/themes/light/light_theme_heading_text_styles.dart';

final lightThemeExtension = AppThemeExtension(
  colors: AppThemeColors(
    buttonColors: LightButtonColors(),
    backgroundColors: LightBgColors(),
  ),
  textStyles: const AppThemeTextStyles(
    heading: LightThemeHeadingTextStyles(),
    body: LightThemeBodyTextStyles(),
  ),
);
