import 'package:design/halper/halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment_Successful extends StatelessWidget {
  const Payment_Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/Successful.png"),
            ),
            Text(
              "Successful purchase!",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            hSize(20),
            InkWell(
              onTap: () {
                _dashboard(context);
              },
              child: Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3D5CFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Start learning",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _dashboard(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actions: [Padding(padding: EdgeInsets.all(15),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  "Clocking in!",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "Good Job!",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            hSize(20),
            Row(
              children: [
                Text(
                  "Learned today",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  "totally hours",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "46",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                wSize(3),
                Text(
                  "min",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  "468",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                wSize(3),
                Text(
                  "hrs",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Text(
              "totally days",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                Text(
                  "554",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                wSize(3),
                Text(
                  "hrs",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            hSize(10),
            Center(
              child: Text(
                "Record og this week",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            hSize(10),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff3D5CFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff3D5CFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff3D5CFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff3D5CFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                wSize(3),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            hSize(20),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xff3D5CFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                "Share",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            )
          ],
        )
      ],
    ),
  );
}
