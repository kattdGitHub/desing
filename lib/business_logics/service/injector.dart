import'dart:async';
import'dart:io';

import'package:firebase_core/firebase_core.dart';
import'package:flutter/material.dart';
import'package:flutter/services.dart';
import'package:get_it/get_it.dart';
import'package:intl/date_symbol_data_local.dart';
import'package:design/business_logics/repository/location_repo.dart';
import'package:design/business_logics/repository/screen_repo.dart';
import'package:design/business_logics/service/all_getter_setter.dart';
import'package:design/business_logics/service/dio_services.dart';
import'package:design/business_logics/service/notification/firebase_notifcation.dart';
import'package:design/business_logics/service/notification/local_notification_api.dart';
import'package:design/business_logics/service/prefers_utility.dart';
import'package:design/utils/common/print_log.dart';

/// Application ID
/// E11A5393
/// Application Name
/// Trillboards

/// Callback signature for the application's main runner.
typedef AppRunner = FutureOr<void> Function();

/// Class responsible for initializing the application and its dependencies.
class AppInjector {
  /// Initializes the application and its dependencies.
  static Future<void> init({
    required AppRunner appRunner,
  }) async {
    /// Ensure Flutter bindings are initialized
    WidgetsFlutterBinding.ensureInitialized();
    /// Initialize Firebase with default options
    await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
    );
    /// Set preferred device orientations
    await SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    /// Hide the app keyboard
    hideAppKeyboard;
    /// Check if the platform is iOS
    if (Platform.isIOS) {
      /// Invoke method channel to get iOS version
      final String version = await const MethodChannel('platform').invokeMethod('getIOSVersion');
      /// Print iOS version to log
      printLog("Ios version: $version");
    }
     /// Initialize dependencies
    await _initDependencies();
     /// Initialize notification service
    // NotificationService.init();
     /// Initialize local notification service
    // LocalNotificationService.init();
     /// Initialize local storage
    await LocalStorage.instance.initialize();
     /// Initialize date formatting
    await initializeDateFormatting();
    /// Hide the app keyboard again
    hideAppKeyboard;
    /// Run the application
    appRunner();
  }

  /// Initializes the application dependencies.
  static Future<void> _initDependencies() async {
    /// Ensure all dependencies are ready
    await GetIt.I.allReady();

    /// Initialize Hive storage
    // final storage = await HiveStorageImp.init();
    /// Register lazy singleton for local storage
    // GetIt.I.registerLazySingleton<LocalStorage>(() => storage);
    /// Register singleton for navigator key
    GetIt.I.registerSingleton<GlobalKey<NavigatorState>>(
        GlobalKey<NavigatorState>());

    /// Register singleton for HTTP service
    GetIt.I.registerSingleton<HttpService>(HttpService());

    /// Register singleton for authentication repository
    // GetIt.I.registerSingleton<AuthRepo>(AuthRepoImp());
  }
}