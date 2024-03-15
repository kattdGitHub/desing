import 'package:design/halper/halper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "message",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "notification",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black54),
                ),
              ],
            ),
            hSize(20.h),
            Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      color: Color(0xffD8FFEF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
                wSize(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bert Pullman",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "04:32 pm",
                  style: TextStyle(fontSize: 12.sp),
                )
              ],
            ),
            hSize(5),
            Text(
              "Congratulations on completing the first lesson, \nkeep up the good work!",
              style: TextStyle(fontSize: 12.sp),
            ),
            hSize(30.h),
            Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      color: Color(0xffD8FFEF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
                wSize(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daniel Lawson",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "04:32 pm",
                  style: TextStyle(fontSize: 12.sp),
                )
              ],
            ),
            hSize(5),
            Text(
              "Your course has been updated, you can check \nthe new course in your study course.",
              style: TextStyle(fontSize: 12.sp),
            ),
            hSize(10.h),
            Center(
              child: Container(
                height: 145.h,
                width: 290.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFE7EE),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ), hSize(20.h),
            Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      color: Color(0xffD8FFEF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
                wSize(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nguyen Shane",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "12:00 am",
                  style: TextStyle(fontSize: 12.sp),
                )
              ],
            ),
            hSize(5),
            Text(
              "Congratulations, you have completed your \nregistration! Let's start your learning journey next.",
              style: TextStyle(fontSize: 12.sp),
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
