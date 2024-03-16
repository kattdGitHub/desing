import 'package:design/halper/appColor.dart';
import 'package:design/halper/halper.dart';
import 'package:design/screen/dashboard/buyScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text = <String>[
      "Visual identiy ",
      "Painting",
      "Coding",
      "Writing"
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.eye_slash),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hSize(20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      CupertinoIcons.xmark_circle_fill,
                      color: AppColors.Contearbackground,
                    ),
                    wSize(7),
                    
                    Image(
                      image: AssetImage("assets/filter.JPG"),
                    ),
                    wSize(10),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int a = 0; a < text.length; a++)
                    Container(
                      child: Center(
                        child: Text(
                          text[a],
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ),
                      ),
                      width: 104.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ).paddingOnly(left: 5, top: 10),
                ],
              ),
            ),
            Text(
              "Results",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ).paddingOnly(top: 6),
            for (int a = 0; a <= 15; a++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                        color: AppColors.Contearbackground,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  InkWell(onTap: () {
                    pushTo(context, BuyScreen());

                  },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Product Design v1.0",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.profile_circled,
                              color: AppColors.Contearbackground,
                            ),
                            Text(
                              " Robertson Connie",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${190}",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                              ),
                            ),
                      wSize(10),
                            Container(
                              width: 41.w,
                              height: 15.h,
                              child: Text(
                                "16hours",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp,
                                    color: Colors.deepOrange),
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.Contearbackground,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 25),
                  )
                ],
              ).paddingSymmetric(horizontal: 20).paddingOnly(top: 20),
          ],
        ).paddingSymmetric(horizontal: 18),
      ),
    );
  }
}
