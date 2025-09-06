import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';
import 'package:it_navigator/common_base/common_base.dart';

@RoutePage()
class LoginPageRoute extends StatelessWidget {
  const LoginPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage(
      router: LoginRouterImpl(),
    );
  }
}
