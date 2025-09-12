import 'package:flutter/material.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/bloc/base_bloc.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/localization/app_localization_ex.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.router});
  final RegisterRouter router;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.themes;
    final locale = context.locale;
    final textStyles = theme.textStyles;
    final colors = theme.colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: Text(
                locale.letsStart,
                style: textStyles.heading.head4,
              ),
            ),
            Text(
              locale.createAccount,
              textAlign: TextAlign.center,
              style: textStyles.body.mLBody16,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: CustomInputField(
                controller: nameController,
                hintText: locale.username,
                icon: Icons.person,
                filledColor: colors.backgroundColors.inputFieldColor,
                hintTextStyle: textStyles.body.mMBody14.copyWith(
                  color: colors.textColors.hintTextColor,
                ),
                textStyle: textStyles.body.sbMBody14,
              ),
            ),
            CustomInputField(
              controller: surnameController,
              hintText: locale.surname,
              icon: Icons.person,
              filledColor: colors.backgroundColors.inputFieldColor,
              hintTextStyle: textStyles.body.mMBody14.copyWith(
                color: colors.textColors.hintTextColor,
              ),
              textStyle: textStyles.body.sbMBody14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: CustomInputField(
                controller: emailController,
                hintText: locale.email,
                icon: Icons.email,
                filledColor: colors.backgroundColors.inputFieldColor,
                hintTextStyle: textStyles.body.mMBody14.copyWith(
                  color: colors.textColors.hintTextColor,
                ),
                textStyle: textStyles.body.sbMBody14,
              ),
            ),
            CustomInputField(
              controller: passwordController,
              hintText: locale.password,
              icon: Icons.lock,
              filledColor: colors.backgroundColors.inputFieldColor,
              hintTextStyle: textStyles.body.mMBody14.copyWith(
                color: colors.textColors.hintTextColor,
              ),
              textStyle: textStyles.body.sbMBody14,
            ),
            SizedBox(
              height: 60,
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.signUpStatus.isSuccess) {
                  widget.router.navigateToHome(context);
                } else if (state.signUpStatus.isError) {
                  context.showSnackBarText(state.error?.message ?? '');
                }
              },
              builder: (context, state) {
                return CustomTextButton(
                  width: 250,
                  isLoading: state.signUpStatus.isLoading,
                  gradientColor1: colors.textColors.loginGradient1,
                  gradientColor2: colors.textColors.loginGradient2,
                  onPressed: () {
                    final user = SignUpUseCaseParams(
                      email: emailController.text,
                      password: passwordController.text,
                      surname: surnameController.text,
                      username: nameController.text,
                    );
                    if (user.isFilled) {
                      context.read<AuthBloc>().add(RegisterEvent(user: user));
                    } else {
                      context.showSnackBarText(locale.fillField);
                    }
                  },
                  text: locale.register,
                  textStyle: textStyles.heading.head6.copyWith(
                    color: colors.textColors.whiteTextColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
