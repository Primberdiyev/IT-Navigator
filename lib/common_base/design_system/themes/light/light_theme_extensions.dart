import 'package:it_navigator/common_base/common_base.dart';

final lightThemeExtension = AppThemeExtension(
  colors: AppThemeColors(
    buttonColors: LightButtonColors(),
    backgroundColors: LightBgColors(),
    textColors: LightTextColors(),
    indicatorColors: LightIndicatorColors(),
  ),
  textStyles: const AppThemeTextStyles(
    heading: LightThemeHeadingTextStyles(),
    body: LightThemeBodyTextStyles(),
  ),
);
