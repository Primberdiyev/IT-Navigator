import 'package:it_navigator/modules/common_base/common_base.dart';

class OnboardingModel {
  const OnboardingModel({
    required this.title,
    required this.subtitle,
    required this.pathToImage,
  });

  final String title;
  final String subtitle;
  final AssetGenImage pathToImage;
}
