import 'package:design/pageview.dart';
import 'package:flutter/material.dart'; // Flutter framework
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screen utilities
import 'package:design/utils/app_multi_provider.dart'; // Multi-provider utility
import 'package:design/utils/common/app_config.dart'; // App configuration
import 'package:design/utils/theme/app_theme.dart';

import 'package:design/utils/common/app_config.dart';

/// Main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// Builds the main application widget.
  @override
  Widget build(BuildContext context) {
    /// Initialize app configuration
    AppConfig.init(context);

    /// Initialize screen utilities
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      builder: (context, child) {
        /// Multi-provider for app state management
        return AppMultiProvider(
          child: MaterialApp(
            /// Light theme
            theme: getAppThemeData,

            /// Dark theme
            darkTheme: getAppThemeData,

            /// Theme mode
            themeMode: ThemeMode.light,

            /// Disable debug banner
            debugShowCheckedModeBanner: false,

            /// Navigator key
            navigatorKey: AppConfig.materialKey,

            /// Initial screen
            home: PageViewScreen(),
            builder: (context, child) {
              /// Media query for text scale factor
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: child ?? const SizedBox(),
              );
            },
          ),
        );
      },
    );
  }
}
