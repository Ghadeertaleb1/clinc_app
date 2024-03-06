import 'package:clinc_app/core/constant.dart';
import 'package:clinc_app/view/component/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: Get.width * 0.10,
                    backgroundImage: AssetImage("asset/dr_profile.png")),
                Row(children: [
                  CustomImage(url: "asset/bell.png"),
                  SizedBox(width: 15),
                  InkWell(
                    child: CustomImage(url: "asset/options.png"),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello,",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: AppColors.blue),
            ),
            Text(
              "Dr. Alexender!,",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(
                hintText: "Search..",
                leading: Icon(
                  Icons.search,
                  color: AppColors.blue,
                ),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 20)),
                side: MaterialStateProperty.all(
                    BorderSide(color: AppColors.white, width: 2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
            SizedBox(
              height: 60,
            ),
            Text(
              "Today Appointments",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            )
          ]),
        ),
      ),
    );
  }
}
