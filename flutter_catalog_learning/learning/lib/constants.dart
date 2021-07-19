import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

const APP_VERSION = "V1.0";

const APP_NAME = "app của hùng";

const APP_DESCRIPTION = "Học flutter cùng hùng";

final AppIcon =
    Image.asset('res/images/launcher_icon.png', width: 64, height: 64);

final flatformType = getCurrentFlatformType();

final isOnMobile =
    {PlatformType.Android, PlatformType.iOs}.contains(flatformType);

enum PlatformType { Web, iOs, Android, MacOS, Fuchsia, Linux, Window, Unknown }

PlatformType getCurrentFlatformType() {
  if (kIsWeb) {
    return PlatformType.Web;
  }
  if (Platform.isAndroid) {
    return PlatformType.Android;
  }
  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }
  if (Platform.isIOS) {
    return PlatformType.iOs;
  }
  if (Platform.isLinux) {
    return PlatformType.Linux;
  }
  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }
  if (Platform.isWindows) {
    return PlatformType.Window;
  }
  return PlatformType.Unknown;
}
