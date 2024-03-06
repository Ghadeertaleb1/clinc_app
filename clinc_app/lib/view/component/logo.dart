import 'package:clinc_app/view/component/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: Get.width * 0.25,
        child: CustomImage(
          width: Get.width * 0.45,
          url: "asset/logo.png",
        ));
  }
}
