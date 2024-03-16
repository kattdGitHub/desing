import 'package:flutter/material.dart';

class SplaasScreen extends StatelessWidget {
  const SplaasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Skip",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
