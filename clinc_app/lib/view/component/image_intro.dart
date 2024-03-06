import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageIntro extends StatelessWidget {
  const ImageIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * 0.35,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
          image: DecorationImage(
              image: AssetImage("asset/bg.png"), fit: BoxFit.cover),
        ));
  }
}
