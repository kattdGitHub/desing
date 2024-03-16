import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../halper/appColor.dart';
import '../logscreen.dart';
import '../signup.dart';

class OnDashboard3 extends StatelessWidget {
  const OnDashboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("assets/Ondashboard3.png"),
          ),
          hSize(40.h),
          Text(
            textAlign: TextAlign.center,
            "Create your own \nstudy plan",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
          hSize(20.h),
          Text(
            textAlign: TextAlign.center,
            "Study according to the \nstudy plan, make study \nmore motivated",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          hSize(30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 20.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              wSize(4),
              Container(
                width: 20.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              wSize(4),
              Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              hSize(40.h),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 70, vertical: 20),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(onTap: () => pushTo(context,SignUpScreen()),
            child: Container(
              width: 160.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Color(0xff3D5CFF),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          wSize(8.w),  InkWell(onTap: () => pushTo(context,LoginScreen()),
            child: Container(
              width: 160.w,
              height: 50.h,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Color(0xff3D5CFF),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ).paddingOnly(bottom: 30, left: 20),
    );
  }
}
