import 'package:clinc_app/core/constant.dart';
import 'package:flutter/material.dart';

class CustomLoginTitle extends StatelessWidget {
  final String text;
  const CustomLoginTitle({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.blue, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
