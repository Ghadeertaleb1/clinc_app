import 'package:clinc_app/controller/login/login_controller.dart';
import 'package:clinc_app/view/component/blue_container.dart';
import 'package:clinc_app/view/component/custom_button.dart';
import 'package:clinc_app/view/component/custom_image.dart';
import 'package:clinc_app/view/component/custom_login_title.dart';
import 'package:clinc_app/view/component/custom_text_field.dart';
import 'package:clinc_app/view/component/image_intro.dart';
import 'package:clinc_app/view/component/login_container.dart';
import 'package:clinc_app/view/component/logo.dart';
import 'package:clinc_app/view/component/text_field_effect.dart';
import 'package:clinc_app/view/pages/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clinc_app/core/constant.dart';

class CustomHomePage extends StatelessWidget {
  final String userLogo;
  final String title;
  final bool isdoctor;
  final double? doctorLogoSize;
  final void Function()? onPressed;
  const CustomHomePage(
      {super.key,
      this.onPressed,
      this.doctorLogoSize,
      required this.isdoctor,
      required this.userLogo,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();
    return Container(
      color: AppColors.white,
      height: Get.height,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomImage(
                          url: userLogo,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CustomLoginTitle(text: title),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFiledEffect(
                          child: CustomTextField(
                            obscureText: loginController.visibility.value,
                            text: "Your Name",
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        GetBuilder<LoginController>(
                          builder: (LoginController controller) {
                            return TextFiledEffect(
                              child: CustomTextField(
                                obscureText: controller.visibility.value,
                                text: "Password",
                                suffixIcon: IconButton(
                                  color: AppColors.grey,
                                  onPressed: () {
                                    loginController.changeVisibility();
                                  },
                                  icon: loginController.visibility.value
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () => Get.to(ForgetPasswordPage()),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: AppColors.blue, fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        Button(
                          buttonLable: Text(
                            "Login",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: onPressed!,
                          horizontalPadding: 60,
                          verticalPadding: 10,
                        ),
                      ],
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
