import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/appColor.dart';
import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: AppConfig.width,
            height: AppConfig.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(CupertinoIcons.eye_slash),
                          ),
                          Image(
                            image: AssetImage(
                                "assets/Ads_1_-removebg-preview.png"),
                          )
                        ],
                      ).paddingSymmetric(vertical: 10, horizontal: 15),
                    ),
                    height: 400,
                    width: AppConfig.width,
                    decoration: BoxDecoration(
                      color: AppColors.appbarbackground,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 227.h,
            child: Container(
              height: AppConfig.height.h,
              width: AppConfig.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white38,
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                    offset: Offset(
                      0,
                      3,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: SafeArea(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Product Design v1.0",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: AppColors.primaryColor),
                          ),
                          Spacer(),
                          Text(
                            "\$${74.00}",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: AppColors.primaryColor,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "6h 14min · 24 Lessons",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor),
                      ),
                      hSize(10),
                      Text(
                        "About this course",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black),
                      ),
                      Text(
                        '''Sed ut perspiciatis unde omnis iste natus error sit 
                  voluptatem accusantium doloremque laudantium, ''',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.textColor),
                      ).paddingOnly(top: 6),
                      Center(
                        child: Icon(
                          CupertinoIcons.eye_slash,
                        ),
                      ).paddingOnly(
                        top: 15,
                        bottom: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "01 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: AppColors.textColor),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome to the Course"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "6.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor,
                                        fontSize: 12.sp),
                                  ),
                                  Text(
                                    " mins",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  wSize(10),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primaryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            child: Icon(
                              Icons.slow_motion_video_outlined,
                              size: 55,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle),
                          )
                        ],
                      ).paddingOnly(bottom: 20),
                      Row(
                        children: [
                          Text(
                            "02 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: AppColors.textColor),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome to the Course"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "6.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor,
                                        fontSize: 12.sp),
                                  ),
                                  Text(
                                    " mins",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  wSize(10),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primaryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            child: Icon(
                              Icons.slow_motion_video_outlined,
                              size: 55,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle),
                          )
                        ],
                      ).paddingOnly(bottom: 20),
                      Row(
                        children: [
                          Text(
                            "03 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: AppColors.textColor),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome to the Course"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "6.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor,
                                        fontSize: 12.sp),
                                  ),
                                  Text(
                                    " mins",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  wSize(10),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primaryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            child: Icon(
                              Icons.slow_motion_video_outlined,
                              size: 55,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle),
                          )
                        ],
                      ).paddingOnly(bottom: 20),
                    ],
                  ).paddingSymmetric(vertical: 10, horizontal: 20),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 7.0,
              spreadRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],),
        width: AppConfig.width,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 90.w,
              height: 50,
              child: Icon(
                CupertinoIcons.star,
                color: Colors.deepOrange,
                size: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.appbarbackground,
              ),
            ),
            Container(
              height: 50,
              width: 236.w,
              child: Center(
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
