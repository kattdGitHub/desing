import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "message",
              ),
              Tab(
                text: "notification",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 38.h,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEBF0),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image(image: AssetImage("assets/bank-card.png")),
                    ),
                    wSize(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Successful purchase!",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 18,
                              color: Colors.black26,
                            ),
                            wSize(4),
                            Text(
                              "Just Now",
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                hSize(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 38.h,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAFF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image(image: AssetImage("assets/message.png")),
                    ),
                    wSize(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Congratulations on completing the ...",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 18,
                              color: Colors.black26,
                            ),
                            wSize(4),
                            Text(
                              "Just Now",
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                hSize(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 38.h,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAFF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image(image: AssetImage("assets/message.png")),
                    ),
                    wSize(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your course has been updated, you ...",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 18,
                              color: Colors.black26,
                            ),
                            wSize(4),
                            Text(
                              "Just Now",
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                hSize(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 38.h,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAFF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image(image: AssetImage("assets/message.png")),
                    ),
                    wSize(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Congratulations, you have ...",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 18,
                              color: Colors.black26,
                            ),
                            wSize(4),
                            Text(
                              "Just Now",
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ).paddingAll(20),
          ],
        ),
      ),
    );
  }
}
