import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';
import 'package:it_navigator/common_base/common_base.dart';

class OnboardingRouterImpl implements OnboardingRouter {
  @override
  void navigateToAuth(BuildContext context) => context.router.replace(
        LoginPageRoute(),
      );
}
