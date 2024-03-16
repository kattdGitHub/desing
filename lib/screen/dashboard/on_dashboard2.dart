import 'package:design/halper/halper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../halper/appColor.dart';
import '../logscreen.dart';
import 'on_dashboard3.dart';

class OnDashboad2 extends StatelessWidget {
  const OnDashboad2({super.key});

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
            image: AssetImage("assets/illustration3.png"),
          ),
          hSize(40.h),
          Text(
            textAlign: TextAlign.center,
            "Quick and easy \nlearning",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
          hSize(20.h),
          Text(
            textAlign: TextAlign.center,
            "Easy and fast learning at \nany time to help you \nimprove various skills",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          hSize(40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 20.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Color(0xffEAEAFF),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),    wSize(4),
              Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              wSize(4),
              Container(
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
