import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class My_Courses extends StatelessWidget {
  const My_Courses({super.key});

  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                Container(
                  height: 182,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFE7EE),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "project",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Product Design v1.0",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/cardscre.png"),
                        ).paddingOnly(top: 15, bottom: 5),
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
                              "14/24",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),Spacer(),
                            Image(image: AssetImage("assets/play.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),wSize(5), Container(
                  height: 182,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffBAD6FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Java",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Development",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Line(1).png"),
                        ).paddingOnly(top: 35, bottom: 5),
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
                              "12/18",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),Spacer(),
                            Image(image: AssetImage("assets/play2.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),hSize(10), Container(
              height: 182,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffBAE0DB),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Visual Design",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Image(
                      image: AssetImage("assets/Group 126(1).png"),
                    ).paddingOnly(top: 45, bottom: 5),
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
                          "10/16",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),Spacer(),
                        Image(image: AssetImage("assets/play4.png"))
                      ],
                    )
                  ],
                ),
              ),
            ), Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 300,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.amber,
                      child: Center(child: Text('$index')),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
