import 'package:design/halper/Appconfig.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

/// Retrieves the global [BuildContext].
BuildContext get globalBuildContext => AppConfig.materialKey.currentContext!;

/// Checks if the global [BuildContext] exists.
bool get globalBuildContextExits =>
    AppConfig.materialKey.currentContext != null;
