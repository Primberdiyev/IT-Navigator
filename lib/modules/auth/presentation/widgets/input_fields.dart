import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/localization/localization.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final theme = context.themes;
    final colors = theme.colors;
    final textStyles = theme.textStyles;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomInputField(
            controller: usernameController,
            hintText: locale.username,
            icon: Icons.person,
            filledColor: colors.backgroundColors.inputFieldColor,
            textStyle: textStyles.body.sbMBody14,
            hintTextStyle: textStyles.body.mMBody14.copyWith(
              color: colors.textColors.hintTextColor,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          CustomInputField(
            controller: passwordController,
            hintText: locale.password,
            icon: Icons.lock,
            filledColor: colors.backgroundColors.inputFieldColor,
            textStyle: textStyles.body.sbMBody14,
            hintTextStyle: textStyles.body.mMBody14.copyWith(
              color: colors.textColors.hintTextColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(locale.forgotPassword),
        ],
      ),
    );
  }
}
