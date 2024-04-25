import 'package:clinc_app/core/constant/colors.dart';
import 'package:clinc_app/core/constant/constant.dart';
import 'package:clinc_app/view/component/circle_avatar.dart';
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
                CirclerAvatar(
                    url: "asset/dr_profile.png", width: Get.width * 0.10),
                Row(children: [
                  CustomImage(url: "asset/bell.png"),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {},
                    child: CustomImage(url: "asset/options.png"),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              Constant.helloText,
              style: Constant.w300TitleStyle(AppColors.blue, 30),
            ),
            Text(
              Constant.drName,
              style: Constant.w600TitleStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(
                hintText: Constant.search,
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
              Constant.todayAppointments,
              style: Constant.w300TitleStyle(AppColors.black, 30),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: Get.height * 0.18,
              width: Get.width,
              child: ListView.builder(
                  // padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                        width: Get.width * 0.30,
                        margin:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.white, width: 2),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              CirclerAvatar(
                                url: "asset/patient1.png",
                                width: Get.height * 0.03,
                              )
                            ]),
                            Row(children: [
                              Text(
                                "Patient Name",
                                style: Constant.w300TitleStyle(
                                    AppColors.black, 15),
                              ),
                            ]),
                            Expanded(child: Container()),
                            Container(
                              width: Get.width * 0.25,
                              decoration: BoxDecoration(
                                color: AppColors.pink.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Thyroid Dysfunction",
                                style:
                                    Constant.w300TitleStyle(AppColors.pink, 11),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: Get.width * 0.30,
                              decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  )),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 6, left: 10),
                                    child: CustomImage(
                                      url: "asset/timer.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: Constant.w300TitleStyle(
                                        AppColors.white, 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Explore",
              style: Constant.loginTitleStyle(AppColors.black),
            )
          ]),
        ),
      ),
    );
  }
}
