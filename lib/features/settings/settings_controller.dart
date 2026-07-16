// lib/features/settings/settings_controller.dart

import 'package:flutter/material.dart';

class SettingsController extends ChangeNotifier {

  ThemeMode _themeMode =
      ThemeMode.system;

  Duration _autoLockDuration =
      const Duration(minutes: 5);

  Duration _clipboardTimeout =
      const Duration(seconds: 30);


  ThemeMode get themeMode =>
      _themeMode;


  Duration get autoLockDuration =>
      _autoLockDuration;


  Duration get clipboardTimeout =>
      _clipboardTimeout;



  void setThemeMode(
    ThemeMode mode,
  ) {

    _themeMode = mode;

    notifyListeners();
  }



  void setAutoLockDuration(
    Duration duration,
  ) {

    _autoLockDuration = duration;

    notifyListeners();
  }



  void setClipboardTimeout(
    Duration duration,
  ) {

    _clipboardTimeout = duration;

    notifyListeners();
  }
}