import 'dart:ui';

import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text = <String>[
      "Product \nDesign v1.0",
      "java \nDevelopment",
      "Visual Design",
    ];
    List<String> photo = <String>[
      "assets/cardscre.png",
      "assets/Line(1).png",
      "assets/Group 126(1).png",
    ];
    List<String> icon = <String>[
      "assets/play.png",
      "assets/play2.png",
      "assets/play4.png",
    ];
    List<String> time = <String>[
      "14/24",
      "12/18",
      "10/16",
    ];

    List<int> rang = <int>[
      0xffFFE7EE,
      0xffBAD6FF,
      0xffBAE0DB,
    ];

    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.4;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.eye_slash),
        title: Text(
          "My Courses",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Learned today",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  "46min",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "/ 60min",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Image(
              image: AssetImage("assets/Line.png"),
            ),
            hSize(15),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  itemCount: text.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            // height: 182,
                            // width: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                             color: Color(rang[index] ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    text[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset(
                                    photo[index],
                                  ).paddingOnly(top: 15, bottom: 20),
                                  Text(
                                    "Completed",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        time[index],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Spacer(),
                                      Image(
                                        image: AssetImage(
                                          icon[index],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
