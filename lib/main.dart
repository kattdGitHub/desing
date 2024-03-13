import 'dart:ui';

import 'package:design/halper/Appconfig.dart';
import 'package:design/screen/dashboard/buyScreen.dart';
import 'package:design/screen/dashboard/dashboard.dart';
import 'package:design/screen/dashboard/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          textTheme: TextTheme(
            bodyLarge: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            bodySmall: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            displayLarge: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            displayMedium: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            displaySmall: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            headlineSmall: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            titleSmall: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            titleMedium: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            titleLarge: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            labelSmall: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            labelMedium: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            labelLarge: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            headlineMedium: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            headlineLarge: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
            bodyMedium: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: "Poppins"),
          ),
          colorScheme: ColorScheme.fromSeed(
            background: Color(0xffF0F0F2),
            seedColor: Color(0xffF0F0F2),
            onPrimary: Color(0xff3D5CFF),
          ),
          primaryColor: Color(0xff3D5CFF),
        ),
        home: BuyScreen(),
      ),
    );
  }
}
