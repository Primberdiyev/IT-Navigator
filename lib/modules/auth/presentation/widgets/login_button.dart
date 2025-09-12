import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/localization/localization.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.email,
    required this.password,
    required this.router,
  });
  final String email;
  final String password;
  final LoginRouter router;
  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final theme = context.themes;
    final colors = theme.colors;
    final textStyles = theme.textStyles;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 40,
        top: 32,
      ),
      child: BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            previous.loginStatus != current.loginStatus,
        listenWhen: (previous, current) =>
            previous.loginStatus != current.loginStatus,
        listener: (context, state) {
          if (state.loginStatus.isError) {
            context.showSnackBarText(state.error?.message ?? '');
          } else if (state.loginStatus.isSuccess) {
            router.navigateToHome(context);
          }
        },
        builder: (context, state) {
          return CustomTextButton(
            isLoading: state.loginStatus.isLoading,
            width: 250,
            gradientColor1: colors.textColors.loginGradient1,
            gradientColor2: colors.textColors.loginGradient2,
            onPressed: () => context.read<AuthBloc>().add(
                  LoginEvent(
                    email: email,
                    password: password,
                  ),
                ),
            text: locale.login,
            textStyle: textStyles.heading.head6.copyWith(
              color: colors.textColors.whiteTextColor,
            ),
          );
        },
      ),
    );
  }
}
