import 'package:design/halper/appColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackground,
        leading: Icon(CupertinoIcons.eye_slash),
      ),
    );
  }
}
