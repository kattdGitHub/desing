import 'package:flutter/material.dart';
import 'package:design/screen/dashboard/on_dashboard1.dart';
import 'package:design/screen/dashboard/on_dashboard2.dart';
import 'package:design/screen/dashboard/on_dashboard3.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    OnDashboard1(),
    OnDashboad2(),
    OnDashboard3(),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,
        reverse: false,
        // Disable backward scrolling
        physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}
