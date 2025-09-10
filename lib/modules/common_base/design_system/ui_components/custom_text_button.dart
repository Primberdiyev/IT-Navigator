import 'package:flutter/material.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 53,
    this.width = 200,
    this.textStyle,
    this.gradientColor1,
    this.gradientColor2,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final Color? gradientColor1;
  final Color? gradientColor2;
  final double height;
  final double width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colors = context.themes.colors;
    return GestureDetector(
      onTap: !isLoading ? onPressed : null,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: gradientColor1 != null && gradientColor2 != null
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    gradientColor1!,
                    gradientColor2!,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            : null,
        child: isLoading
            ? SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: colors.textColors.whiteTextColor,
                ),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: textStyle,
              ),
      ),
    );
  }
}
