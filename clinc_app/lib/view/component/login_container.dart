import 'package:clinc_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginContainer extends StatelessWidget {
  final Widget? child;
  const LoginContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.05, horizontal: Get.width * 0.10),
      height: Get.height * 0.67,
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              blurRadius: 0.5,
              spreadRadius: 0.5,
              offset: Offset(0.1, 0.2),
              blurStyle: BlurStyle.outer),
        ],
        color: AppColors.white,
      ),
      child: child,
    );
  }
}
