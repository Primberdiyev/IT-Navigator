import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

class RegisterRouterImpl implements RegisterRouter {
  @override
  void navigateToHome(BuildContext context) =>
      context.router.replace(HomePageRoute());

  @override
  void pop(BuildContext context) => context.router.pop();
}
