import 'dart:ui';
import 'package:it_navigator/common_base/common_base.dart';

class LightTextColors implements TextColors {
  @override
  Color get splashTextColor => AppColors.azul;

  @override
  Color get whiteTextColor => AppColors.white;

  @override
  Color get onboardingTextColor => AppColors.greyScale200;
}
