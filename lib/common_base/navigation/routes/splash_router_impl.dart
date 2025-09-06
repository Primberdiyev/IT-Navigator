import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';
import 'package:it_navigator/common_base/common_base.dart';

class SplashRouterImpl implements SplashRouter {
  @override
  void navigateToOnboarding(BuildContext context) =>
      context.router.replace(OnboardingPageRoute());
}
