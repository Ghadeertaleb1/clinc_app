import 'package:clinc_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CirclerAvatar extends StatelessWidget {
  final double width;
  final String url;
  const CirclerAvatar({
    required this.width,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: width,
      backgroundColor: AppColors.transperent,
      child: Image.asset(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
