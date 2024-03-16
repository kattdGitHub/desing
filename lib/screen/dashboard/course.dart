import 'dart:typed_data';

import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/halper.dart';
import 'package:design/screen/dashboard/buyScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../halper/appColor.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text = <String>[
      "Product Design v1.0",
      "Java Development",
      "Visual Design",
    ];
    List<String> profile = <String>[
      "Robertson Connie",
      "Nguyen Shane",
      "Bert Pullman",
    ];
    List<String> Price = <String>["\$190", "\$190", "\$250"];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Course",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Image(
                    image: AssetImage("assets/Avatar.png"),
                  ),
                ],
              ),
              hSize(5.h),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: Colors.black26,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    hintText: "find Course",
                    hoverColor: Colors.black26,
                    suffixIcon: InkWell(
                        onTap: () {
                          _showbotomsheet(context);
                        },
                        child: Image(image: AssetImage("assets/filter.JPG")))),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 78.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffCEECFE),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 160.w,
                          height: 77.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 21.h,
                                    width: 71.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.r),
                                          bottomLeft: Radius.circular(10.r)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Laguege",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ).paddingOnly(bottom: 6)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Image(
                            image: AssetImage(
                              "assets/laddy3.png",
                            ),
                            fit: BoxFit.cover,
                          ).paddingOnly(left: 3),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 78.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffEFE0FF),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 160.w,
                          height: 77.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 21.h,
                                    width: 71.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.r),
                                          bottomLeft: Radius.circular(10.r)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Painting",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ).paddingOnly(bottom: 6)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Image(
                            image: AssetImage(
                              "assets/LADDYFrame.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Choice Your course",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 28.h,
                    width: 74.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3D5CFF),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Text(
                    "Poular",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Text(
                    "New",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int a = 0; a < text.length; a++)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black87,
                              // blurRadius: 3.0,
                              // spreadRadius: 2.0,
                              offset: Offset(0, 3), // Only bottom shadow
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60.h,
                              height: 60.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text[a],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      profile[a],
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      Price[a],
                                      style: TextStyle(
                                        color: Color(0xff3D5CFF),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Container(
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFEBF0),
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Center(
                                          child: Text(
                                        "16 hours",
                                        style: TextStyle(
                                            color: Color(0xffFF6905),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ).paddingOnly(top: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _showbotomsheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(15),
        height: 800,
        width: AppConfig.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.close),
                  SizedBox(
                    width: AppConfig.width * 0.3,
                  ),
                  Text(
                    "Search Filter",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              hSize(10.h),
              Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              hSize(10.h),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3D5CFF),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Design",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(20.w),
                  Container(
                    height: 30,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Painting",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(20.w),
                  Container(
                    height: 30,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3D5CFF),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Coding",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              hSize(10.h),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Music",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(15.w),
                  Container(
                    height: 30,
                    width: 105.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Visual identiy",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(15.w),
                  Container(
                    height: 30,
                    width: 105,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Mathmetics",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              hSize(20.h),
              Text(
                "Price",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              hSize(20.h),
              Image(
                image: AssetImage("assets/Price.png"),
              ),
              hSize(30.h),
              Text(
                "Duration",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              hSize(20.h),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3D5CFF),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "3-8 hours",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(15.w),
                  Container(
                    height: 30,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "8-14 hours",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(15.w),
                  Container(
                    height: 30,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "14-20 hours",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              hSize(10.h),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "20-24 hours",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  wSize(15.w),
                  Container(
                    height: 30,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F3FD),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "24-30 hours",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              hSize(30.h),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.r)),
                    width: 90,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          color: Color(0xff3D5CFF),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  wSize(10),
                  Container(
                    height: 50,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Color(0xff3D5CFF),
                        borderRadius: BorderRadius.circular(10),),
                    child: Center(

                      child: Text(
                        "Apply Fliter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
