import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/localization/localization.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.router,
  });
  final LoginRouter router;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final theme = context.themes;
    final textStyles = theme.textStyles;
    final colors = theme.colors;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: Stack(
              children: [
                Positioned(
                  top: -65,
                  right: 50,
                  child: Assets.images.loginHeader2.image(
                    height: 200,
                    width: 200,
                  ),
                ),
                Positioned(
                  top: -30,
                  left: -40,
                  child: Assets.images.loginHeader1.image(
                    height: 140,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 45,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.logo.image(
                  height: 100,
                  width: 100,
                ),
                GradientText(
                  locale.appName,
                  style: textStyles.heading.head3,
                  gradientDirection: GradientDirection.ttb,
                  textAlign: TextAlign.end,
                  colors: [
                    colors.textColors.loginGradient1,
                    colors.textColors.loginGradient2,
                  ],
                ),
              ],
            ),
          ),
          Text(
            locale.welcome,
            style: textStyles.heading.head5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 50),
            child: Text(locale.loginExistingAccount),
          ),
          InputFields(
            usernameController: emailController,
            passwordController: passwordController,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40,
              top: 32,
            ),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.loginStatus.isError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        (state.error?.message).toString(),
                      ),
                    ),
                  );
                } else if (state.loginStatus.isSuccess) {
                  widget.router.navigateToHome(context);
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
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      ),
                  text: locale.login,
                  textStyle: textStyles.heading.head6.copyWith(
                    color: colors.textColors.whiteTextColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
