import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hSize(30),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              child: Image(
                image: AssetImage("assets/Avatarman.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          hSize(55.h),
          Row(
            children: [
              Text(
                "Favourite",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(CupertinoIcons.eye_slash)
            ],
          ),
          hSize(20),
          Row(
            children: [
              Text(
                "Edit Account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(CupertinoIcons.eye_slash)
            ],
          ),
          hSize(20),
          Row(
            children: [
              Text(
                "Settings and Privacy",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(CupertinoIcons.eye_slash)
            ],
          ),
          hSize(20),
          Row(
            children: [
              Text(
                "Help",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(CupertinoIcons.eye_slash)
            ],
          )
        ],
      ).paddingSymmetric(vertical: 10, horizontal: 20),
    );
  }
}
