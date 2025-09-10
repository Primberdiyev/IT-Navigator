import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

@RoutePage()
class SplashPageWrapper extends StatelessWidget {
  const SplashPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashPage(
      router: SplashRouterImpl(),
    );
  }
}
