import 'dart:typed_data';

import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/halper.dart';
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
                    hoverColor: Colors.black26),
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
