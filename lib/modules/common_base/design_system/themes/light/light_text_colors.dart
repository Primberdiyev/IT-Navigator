import 'dart:ui';
import 'package:it_navigator/modules/common_base/common_base.dart';

class LightTextColors implements TextColors {
  @override
  Color get splashTextColor => AppColors.azul;

  @override
  Color get whiteTextColor => AppColors.white;

  @override
  Color get onboardingTextColor => AppColors.greyScale200;

  @override
  Color get loginGradient1 => AppColors.blue1;

  @override
  Color get loginGradient2 => AppColors.blue2;

  @override
  Color get hintTextColor => AppColors.greyScale500;
}
