import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NavigtionExtention on BuildContext {
  Future pushTo(Widget widget) {
    return Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  void pop() {
    Navigator.pop(this);
  }

  Future pushReplacement(Widget widget) {
    return Navigator.pushReplacement(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  Future pushAndRemoveUntil(Widget widget) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );
  }
}

extension PaddingExtension on Widget {
  Widget paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }
}

void pushTo(BuildContext context, Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

void back(BuildContext context) {
  Navigator.pop(context);
}

void pushReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

Widget wSize(double v) {
  return SizedBox(
    width: v,
  );
}

Widget hSize(double v) {
  return SizedBox(
    height: v,
  );
}

TextFormField TextFieldCustom({
  String? hintText,
  TextEditingController? controller,
  double? borderRadius,
  Widget? suffixIcon,
  Widget? prefixIcon,
  Color borderColor = const Color(0xFF000000),
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        borderSide: BorderSide(
          color: borderColor,
        ),
      ),
    ),
  );
}
