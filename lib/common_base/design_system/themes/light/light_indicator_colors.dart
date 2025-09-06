import 'dart:ui';

import 'package:it_navigator/common_base/common_base.dart';

class LightIndicatorColors implements IndicatorColors {
  @override
  Color get activeIndicatorColor => AppColors.blueBerrya;

  @override
  Color get notActiveIndicatorColor => AppColors.greyScale100;
}
