import 'package:flutter/material.dart';
import 'package:it_navigator/common_base/common_base.dart';
import 'package:it_navigator/common_base/gen/assets.gen.dart';
import 'package:it_navigator/localization/localization.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocale = context.locale;
    final theme = context.themes;
    final colors = theme.colors;
    final textStyles = theme.textStyles;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.logo.image(
              height: 200,
              width: 200,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              appLocale.appName,
              style: textStyles.heading.head2.copyWith(
                color: colors.textColors.splashTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
