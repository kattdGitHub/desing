import 'dart:js';

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
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
              style: TextStyle(fontSize: 14, color: Colors.black26),
            ),
            hSize(30),
            Row(
              children: [
                Text(
                  "Learned today",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ),Spacer(), Text(
                  "totally hours",
                  style: TextStyle(
                    color: Colors.black26,
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
                Text(
                  "min",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ), Text(
                  "468",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "hrs",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
