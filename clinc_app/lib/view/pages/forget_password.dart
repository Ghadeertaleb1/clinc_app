import 'package:clinc_app/core/constant/colors.dart';
import 'package:clinc_app/view/component/blue_container.dart';
import 'package:clinc_app/view/component/custom_image.dart';
import 'package:clinc_app/view/component/custom_text_field.dart';
import 'package:clinc_app/view/component/image_intro.dart';
import 'package:clinc_app/view/component/login_container.dart';
import 'package:clinc_app/view/component/logo.dart';
import 'package:clinc_app/view/component/text_field_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: AppColors.white,
        height: double.infinity,
        child: Stack(
          children: [
            ImageIntro(),
            BlueContainer(),
            Logo(),
            Positioned(
              left: Get.width * 0.05,
              right: Get.width * 0.05,
              top: Get.height * 0.25,
              child: LoginContainer(
                  child: Column(
                children: [
                  CustomImage(
                    url: "asset/forget_password.png",
                    height: 50,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Text(
                    "Enter 4 digit code",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  TextFiledEffect(
                    child: CustomTextField(
                      obscureText: true,
                      hintText: "* * * *",
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("00:15"),
                        InkWell(
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(color: AppColors.blue),
                          ),
                        )
                      ])
                ],
              )),
            )
          ],
        ),
      ),
    ));
  }
}
