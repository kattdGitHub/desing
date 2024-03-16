import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design/halper/appColor.dart';
import 'package:design/halper/appbtn.dart';
import 'package:design/halper/halper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hSize(80),
            Text(
              "Log In",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
              ),
              textAlign: TextAlign.start,
            ).paddingOnly(bottom: 15, left: 25),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  hSize(30),
                  Text(
                    "Your  Email",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFieldCustom(),
                  hSize(20),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFieldCustom(
                    suffixIcon: Icon(
                      CupertinoIcons.eye_slash,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: TextStyle(
                              color: Color(0xff858597),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ))
                    ],
                  ),
                  AppBtn(
                    title: "Log In",
                  ),
                  hSize(30),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          " Sign up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2.h,
                        width: 103.w,
                        color: Color(0xffB8B8D2),
                      ),
                      Text(
                        "Or login with",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ).paddingOnly(left: 7, right: 7),
                      Container(
                        height: 2.h,
                        width: 103.w,
                        color: Color(0xffB8B8D2),
                      ),
                    ],
                  ).paddingOnly(top: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/GooglePhoto.jpg")),
                    ],
                  ).paddingOnly(top: 20),
                ],
              ).paddingSymmetric(
                horizontal: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
