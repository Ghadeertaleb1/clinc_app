import 'package:clinc_app/view/pages/doctor_home_page.dart';
import 'package:clinc_app/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorLogin extends StatelessWidget {
  const DoctorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: CustomHomePage(
          isdoctor: true,
          userLogo: "asset/doctor_logo.png",
          title: "DOCTOR",
          doctorLogoSize: 50,
          onPressed: () => Get.off(DoctorHomePage()),
        ),
      ),
    ));
  }
}
