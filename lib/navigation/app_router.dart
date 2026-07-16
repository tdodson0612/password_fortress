// lib/navigation/app_router.dart

import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import '../screens/lock/lock_screen.dart';
import '../screens/settings/settings_screen.dart';

abstract final class AppRouter {
  AppRouter._();

  static const String home = '/';

  static const String lock = '/lock';

  static const String settings = '/settings';

  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case lock:
        return MaterialPageRoute(
          builder: (_) => const LockScreen(),
        );

      case AppRouter.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const LockScreen(),
        );
    }
  }
}