import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/appbtn.dart';
import 'package:design/halper/halper.dart';

import '../halper/appColor.dart';

class PhoneVerify extends StatelessWidget {
  const PhoneVerify({super.key});

  @override
  Widget build(BuildContext context) {
    var height = 50.0;
    var width = 300.0;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.xmark,
        ).paddingOnly(top: 10),
        title: Text(
          "Verify Phone",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ).paddingOnly(top: 10),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            hSize(50),
            Center(
              child: Text(
                "Code is sent to 283 835 2999 ",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff858597)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: TextFieldCustom(),
                ),
                wSize(8),
                Container(
                  width: 50,
                  height: 50,
                  child: TextFieldCustom(),
                ),
                wSize(8),
                Container(
                  width: 50,
                  height: 50,
                  child: TextFieldCustom(),
                ),
                wSize(8),
                Container(
                  width: 50,
                  height: 50,
                  child: TextFieldCustom(),
                ),
              ],
            ).paddingOnly(top: 20, bottom: 30),
            ElevatedButton(
              style: ButtonStyle(
                maximumSize: MaterialStateProperty.all(Size(width, height.h)),
                minimumSize: MaterialStateProperty.all(Size(width, height.h)),
                backgroundColor: MaterialStateProperty.all(
                  AppColors.primaryColor,
                ),
              ),
              onPressed: () {
                _phonedialog(context);
              },
              child: Text(
                "Verify and Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _phonedialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = 200.0;
      var height = 50.0;
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          hSize(20),
          Center(
            child: Column(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryColor),
                ),
                Text(
                  "Success",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ).paddingOnly(top: 20.h, bottom: 10.h),
                Text(
                  'Congratulations, you have completed your registration!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ).paddingOnly(bottom: 10.h),
                ElevatedButton(
                  style: ButtonStyle(
                    maximumSize:
                        MaterialStateProperty.all(Size(width, height.h)),
                    minimumSize:
                        MaterialStateProperty.all(Size(width, height.h)),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.primaryColor,
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Text(
                    "Done",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
      );
    },
  );
}
