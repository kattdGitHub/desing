import 'package:design/screen/dashboard/account.dart';
import 'package:design/screen/dashboard/course.dart';
import 'package:design/screen/dashboard/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/appColor.dart';
import 'package:design/halper/halper.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
          children: [
            SingleChildScrollView(
              child: Stack(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  hSize(30),
                                  Row(
                                    children: [
                                      Text(
                                        "Hi, Kristin",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Image(
                                        image: AssetImage(
                                          "assets/Avatar.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Let’s start learning",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ).paddingSymmetric(horizontal: 15.h),
                            ),
                            height: 183.h,
                            width: AppConfig.width,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          hSize(70),
                          Container(
                            height: 154.h,
                            width: 253.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffCEECFE),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/Group 131.png",
                                      ),
                                      width: 134.w,
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "What do youwant to learn today ?",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      hSize(70),
                                      Container(
                                        height: 31,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF6905),
                                          borderRadius:
                                              BorderRadiusDirectional.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Get Started",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ).paddingSymmetric(vertical: 4),
                                        ),
                                      ).paddingOnly(left: 3)
                                    ],
                                  ).paddingSymmetric(vertical: 10, horizontal: 5),
                                )
                              ],
                            ),
                          ),
                          hSize(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Learning Plan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ).paddingSymmetric(horizontal: 10),
                          Row(
                            children: [
                              Image(image: AssetImage("assets/Ellipse 19.png")),
                              Text(
                                "   Packaging Design",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "40/48",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              )
                            ],
                          ).paddingSymmetric(vertical: 10, horizontal: 30),
                          Row(
                            children: [
                              Image(image: AssetImage("assets/Ellipse 19.png")),
                              Text(
                                "   Product Design ",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "6/40",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              )
                            ],
                          ).paddingSymmetric(vertical: 10, horizontal: 30),
                          hSize(30),
                          Container(
                            width: 335.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                color: Color(0xffEFE0FF)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Meetup",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                    Text(
                                      "Off-line exchange of learning\n experiences",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                      ),
                                    )
                                  ],
                                ).paddingSymmetric(horizontal: 10),
                                Spacer(),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              "assets/Group 136-1.png",
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "assets/Avatar 03.png")),
                                            Spacer(),
                                            Image(
                                                image: AssetImage(
                                                    "assets/Group 137.png"))
                                          ],
                                        ).paddingOnly(top: 23),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 135.h,
                    right: 20.w,
                    child: Container(
                      height: 96.h,
                      width: AppConfig.width - 40.w,
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
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: AppColors.creamColor,
                      ),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Learned today",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: AppColors.textColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "My courses",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "46min",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "/ 60min",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp,
                                  ),
                                )
                              ],
                            ),
                            Image(
                              image: AssetImage(
                                "assets/splaasScreenImage/Rectangle 30.png",
                              ),
                            )
                          ],
                        ).paddingSymmetric(
                          horizontal: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Course(),
            Search(),
            Scaffold(),
            Account(),

          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipses_bubble_fill),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
