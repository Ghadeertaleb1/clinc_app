import 'package:clinc_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? text;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    this.hintText,
    this.suffixIcon,
    this.text,
    super.key,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          label: text != null
              ? Text(
                  text!,
                  style: TextStyle(color: AppColors.grey),
                )
              : null,
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: AppColors.grey, fontSize: 18),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ));
  }
}
