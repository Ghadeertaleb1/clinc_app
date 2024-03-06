import 'package:clinc_app/core/binding/binding.dart';
import 'package:clinc_app/view/pages/doctor_home_page.dart';
import 'package:clinc_app/view/pages/doctor_login.dart';
import 'package:clinc_app/view/pages/forget_password.dart';
import 'package:clinc_app/view/pages/login_patient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: DoctorLogin(),
    );
  }
}
