import 'package:clinc_app/view/pages/home.dart';

import 'package:flutter/material.dart';

class PatientLogin extends StatelessWidget {
  const PatientLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: CustomHomePage(
          isdoctor: false,
          userLogo: "asset/patient_Logo.png",
          title: "PATIENT"),
    ));
  }
}
