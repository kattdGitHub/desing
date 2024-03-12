import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design/halper/appColor.dart';
import 'package:design/halper/appbtn.dart';
import 'package:design/halper/halper.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.creamColor,
        centerTitle: true,
        leading: Icon(CupertinoIcons.eye_slash).paddingOnly(top: 10),
        title: Text(
          "Continue with Phone",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: Color(0xff1F1F39),
          ),
        ).paddingOnly(top: 10),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: AppColors.creamColor,
                child: Column(
                  children: [
                    hSize(30),
                    Center(
                      child: Container(
                        width: 123.w,
                        height: 123.h,
                        child: Image(
                          image: AssetImage(
                            "assets/PhoneNumberLOG.png",
                          ),
                        ),
                      ),
                    ),
                    hSize(20),
                    Text(
                      "Enter Your  Phone Number",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ).paddingOnly(bottom: 20),
                  ],
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r))),
              ).paddingOnly(bottom: 30, top: 20),
              AppBtn(title: "Continue")
            ],
          ),
        ).paddingSymmetric(horizontal: 15),
      ),
    );
  }
}
