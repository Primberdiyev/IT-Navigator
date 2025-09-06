import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';
import 'package:it_navigator/common_base/common_base.dart';

class LoginRouterImpl implements LoginRouter {
  @override
  void navigateToRegister(BuildContext context) =>
      context.router.replace(RegisterPageRoute());
}
