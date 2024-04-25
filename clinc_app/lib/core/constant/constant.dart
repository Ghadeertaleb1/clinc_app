import 'package:clinc_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class Constant {
  static String helloText = "Hello,";
  static String drName = "Dr. Alexender!";
  static String todayAppointments = "Today Appointments";
  static String search = "Search..";
  static String inputName = "your name";
  static String password = "password";
  static String login = "Login";
  static String forgetPassword = "Forget Password?";
  static String doctorTitle = "DOCTOR";
  static String patientTitle = "PATIENT";

  static loginTitleStyle(Color colors) {
    return TextStyle(color: colors, fontSize: 20, fontWeight: FontWeight.w500);
  }

  static w300TitleStyle(Color colors, double? fontSize) {
    return TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.w300, color: colors);
  }

  static w600TitleStyle() {
    return TextStyle(
        fontSize: 30, fontWeight: FontWeight.w600, color: AppColors.blue);
  }
}
