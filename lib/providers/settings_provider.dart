// lib/providers/settings_provider.dart

import 'package:flutter/material.dart';

import '../models/app_settings.dart';

class SettingsProvider extends ChangeNotifier {
  AppSettings _settings = AppSettings.defaults();

  AppSettings get settings => _settings;

  void updateSettings(AppSettings settings) {
    _settings = settings;
    notifyListeners();
  }

  void toggleDarkMode() {
    _settings = _settings.copyWith(
      darkMode: !_settings.darkMode,
    );

    notifyListeners();
  }

  void updatePasswordLength(int length) {
    _settings = _settings.copyWith(
      defaultPasswordLength: length,
    );

    notifyListeners();
  }
}