import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/localization/localization.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
    required this.router,
  });
  final SplashRouter router;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  void navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 3));
    if (context.mounted) {
      widget.router.navigateToOnboarding(context);
    }
  }

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
