// lib/core/constants/app_constants.dart

abstract final class AppConstants {
  AppConstants._();

  static const String databaseName = 'password_fortress.db';

  static const String vaultBox = 'vault';

  static const String settingsBox = 'settings';

  static const String defaultClipboardTimeout = '30';

  static const int minimumMasterPasswordLength = 12;

  static const int defaultPasswordLength = 20;

  static const int maximumPasswordLength = 128;

  static const int autoLockMinutes = 5;
}