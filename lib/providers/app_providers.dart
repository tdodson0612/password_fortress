// lib/providers/app_providers.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'generator_provider.dart';
import 'settings_provider.dart';
import 'theme_provider.dart';
import 'vault_provider.dart';

class AppProviders {
  AppProviders._();

  static List<ChangeNotifierProvider> get providers {
    return [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => VaultProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => SettingsProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => GeneratorProvider(),
      ),
    ];
  }
}