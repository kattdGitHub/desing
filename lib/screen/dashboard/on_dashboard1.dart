import 'package:design/halper/appColor.dart';
import 'package:design/halper/halper.dart';
import 'package:design/screen/dashboard/on_dashboard2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logscreen.dart';

class OnDashboard1 extends StatelessWidget {
  const OnDashboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: () => pushTo(context,LoginScreen()),
            child: Text(
              textAlign: TextAlign.end,
              "Skip",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ).paddingOnly(right: 15),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("assets/ondashboard1.png"),
          ),
          hSize(40.h),
          Text(
            textAlign: TextAlign.center,
            "Numerous free \ntrial courses",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
          hSize(20.h),
          Text(
            textAlign: TextAlign.center,
            "Free courses for you to\nfind your way to learning",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          hSize(40.h),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ) ,wSize(5),   Container(
                width: 20.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(4.r)),
              ),wSize(4),  Container(
                width: 20.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(4.r)),
              ),
            ],
          ),

        ],
      ).paddingSymmetric(horizontal: 70, vertical: 20),
    );
  }
}
