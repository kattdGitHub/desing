import 'package:design/halper/Appconfig.dart';
import 'package:design/halper/appColor.dart';
import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayNowScreen extends StatelessWidget {
  const PayNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Center(
                      child: Image(
                          image: AssetImage(
                              "assets/splaasScreenImage/cadmian.png"))),
                ),
                Positioned(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(
                                "assets/splaasScreenImage/card2.png"),
                          ),
                          //   Image(
                          //   image: AssetImage("assets/splaasScreenImage/Card.png"),
                          // ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "**** **** 3537",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                          ).paddingOnly(top: 30),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Text(
              "\$${"334,33.,3"}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: AppColors.textColor,
              ),
            ).paddingOnly(top: 10),
            Text(
              " My card",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColors.textColor,
              ),
            ),Spacer(),
            Container(
              height: 60,
              width: AppConfig.width * 0.8,
              child: Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,

                  color: Colors.white,  fontSize: 20.sp,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor),
            ),
            hSize(60)
          ],
        ).paddingSymmetric(vertical: 20, horizontal: 15),
      ),
    );
  }
}
