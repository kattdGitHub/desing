import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:design/halper/Appconfig.dart';

import 'appColor.dart';

class AppBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double height;
  final Color? color;
  /// 0.1 to 1
  final double width;
  final TextStyle? style;
  final bool isLoading; // Added loading variable

  const AppBtn({
    Key? key,
    this.onPressed,
    required this.title,
    this.width = 0.5,
    this.height = 50,
    this.color,
    this.isLoading = false,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          height: height.h,
          width: AppConfig.width * width,
          child: ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                  Size(AppConfig.width * width, height.h)),
              minimumSize: MaterialStateProperty.all(
                  Size(AppConfig.width * width, height.h)),
              backgroundColor: MaterialStateProperty.all(
                color ?? AppColors.primaryColor,
              ),
            ),
            child: !isLoading
                ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Text(
                      title,
                      style: style ??
                          TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.left,
                    ),
                  )
                : const CircularProgressIndicator(
                    color: Colors.white,
                  ), // Loading indicator
          ),
        ),
      ],
    );
  }
}
