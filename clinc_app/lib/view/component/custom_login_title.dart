import 'package:clinc_app/core/constant/colors.dart';
import 'package:clinc_app/core/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomLoginTitle extends StatelessWidget {
  final String text;
  const CustomLoginTitle({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Constant.loginTitleStyle(AppColors.blue));
  }
}
