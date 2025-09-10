import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.filledColor,
    required this.textStyle,
    this.controller,
    this.hintTextStyle,
  });
  final String hintText;
  final IconData icon;
  final Color filledColor;
  final TextEditingController? controller;
  final TextStyle? hintTextStyle;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: filledColor,
        hintText: hintText,
        hintStyle: hintTextStyle,
      ),
    );
  }
}
