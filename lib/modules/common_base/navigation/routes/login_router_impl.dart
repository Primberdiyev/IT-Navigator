import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

class LoginRouterImpl implements LoginRouter {
  @override
  void navigateToRegister(BuildContext context) =>
      context.router.replace(RegisterPageRoute());

  @override
  void navigateToHome(BuildContext context) => context.router.replace(
        HomePageRoute(),
      );
}
