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
                SizedBox(
                  width: AppConfig.width,
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
                          // Image(
                          // image: AssetImage("assets/splaasScreenImage/Card.png"),
                          // 0),
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
            ),
            Spacer(),
            InkWell(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Container(
                height: 60,
                width: AppConfig.width * 0.8,
                child: Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor),
              ),
            ),
            hSize(60)
          ],
        ).paddingSymmetric(vertical: 20, horizontal: 15),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
      FocusNode _focusNode = FocusNode();
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Payment Password",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
            Text(
              "Please enter the payment password",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 50,
                  child: TextFormField(
                    controller: _controllers[index],
                    focusNode: index == 0 ? _focusNode : null,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: index == 67
                        ? TextInputAction.done
                        : TextInputAction.next,
                    decoration: InputDecoration(
                      counter: Offstage(),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 6) {
                        // Move focus to the next text field
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ).paddingOnly(left: 10),
                );
              }),
            ),
          ],
        ).paddingSymmetric(horizontal: 15, vertical: 10),
      ).paddingSymmetric(horizontal: 10, vertical: 15);
    },
  );
}
