import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.pathToImage,
  });
  final String title;
  final String subtitle;
  final AssetGenImage pathToImage;

  @override
  Widget build(BuildContext context) {
    final textStyles = context.themes.textStyles;
    final colors = context.themes.colors;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: pathToImage.image(
            height: 302,
            width: 302,
            fit: BoxFit.scaleDown,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: textStyles.heading.head4.copyWith(
            color: colors.textColors.whiteTextColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 16,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: textStyles.body.mXLBody18.copyWith(
              color: colors.textColors.whiteTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
