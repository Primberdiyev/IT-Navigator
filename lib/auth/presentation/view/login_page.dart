import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.router,
  });
  final LoginRouter router;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login Page'),
      ),
    );
  }
}
