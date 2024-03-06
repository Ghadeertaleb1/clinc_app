import 'package:clinc_app/core/constant.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;
  final Text buttonLable;
  final void Function() onPressed;
  const Button({
    super.key,
    required this.buttonLable,
    required this.onPressed,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.blue,
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: AppColors.white, width: 2),
        ),
      ),
      child: buttonLable,
    );
  }
}
