import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/auth/di/auth_di_module.dart';
import 'package:it_navigator/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:it_navigator/modules/common_base/navigation/routes/register_router_impl.dart';

@RoutePage()
class RegisterPageWrapper extends StatelessWidget {
  const RegisterPageWrapper({
    super.key,
    this.module = const AuthDiModule(),
  });
  final AuthDiModule module;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => module.get<AuthBloc>(),
      child: RegisterPage(
        router: RegisterRouterImpl(),
      ),
    );
  }
}
