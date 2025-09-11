import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/auth/di/auth_di_module.dart';
import 'package:it_navigator/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:it_navigator/modules/common_base/bloc/bloc_disposer.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/common_base/di/di.dart';

@RoutePage()
class LoginPageRoute extends StatelessWidget {
  const LoginPageRoute({
    super.key,
    this.module = const AuthDiModule(),
  });
  final AuthDiModule module;

  @override
  Widget build(BuildContext context) {
    return DiScopeWidget(
      module: module,
      child: BlocDisposer<AuthBloc>(
        create: (context) => module.get<AuthBloc>(),
        builder: (_, bloc) {
          return LoginPage(
            router: LoginRouterImpl(),
          );
        },
      ),
    );
  }
}
