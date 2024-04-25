import 'package:flutter/material.dart';
import 'package:clinc_app/core/constant/colors.dart';

class TextFiledEffect extends StatelessWidget {
  final Widget? child;
  const TextFiledEffect({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          const BoxShadow(
              color: AppColors.white,
              blurRadius: 2,
              spreadRadius: 0.2,
              offset: Offset(2, 2),
              blurStyle: BlurStyle.outer),
          BoxShadow(
              color: AppColors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 0.2,
              offset: -const Offset(2, 2),
              blurStyle: BlurStyle.outer),
        ],
      ),
      child: child,
    );
  }
}
