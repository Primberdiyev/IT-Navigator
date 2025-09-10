import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';

@RoutePage()
class RegisterPageWrapper extends StatelessWidget {
  const RegisterPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterPage();
  }
}
