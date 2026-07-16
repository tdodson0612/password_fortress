// lib/models/app_settings.dart

class AppSettings {
  final bool darkMode;

  final Duration autoLockDuration;

  final Duration clipboardClearDuration;

  final int defaultPasswordLength;

  final bool useSymbols;

  final bool useNumbers;

  final bool useUppercase;

  final bool useLowercase;

  const AppSettings({
    required this.darkMode,
    required this.autoLockDuration,
    required this.clipboardClearDuration,
    required this.defaultPasswordLength,
    required this.useSymbols,
    required this.useNumbers,
    required this.useUppercase,
    required this.useLowercase,
  });

  factory AppSettings.defaults() {
    return const AppSettings(
      darkMode: false,
      autoLockDuration: Duration(minutes: 5),
      clipboardClearDuration: Duration(seconds: 30),
      defaultPasswordLength: 20,
      useSymbols: true,
      useNumbers: true,
      useUppercase: true,
      useLowercase: true,
    );
  }

  AppSettings copyWith({
    bool? darkMode,
    Duration? autoLockDuration,
    Duration? clipboardClearDuration,
    int? defaultPasswordLength,
    bool? useSymbols,
    bool? useNumbers,
    bool? useUppercase,
    bool? useLowercase,
  }) {
    return AppSettings(
      darkMode: darkMode ?? this.darkMode,
      autoLockDuration: autoLockDuration ?? this.autoLockDuration,
      clipboardClearDuration:
          clipboardClearDuration ?? this.clipboardClearDuration,
      defaultPasswordLength:
          defaultPasswordLength ?? this.defaultPasswordLength,
      useSymbols: useSymbols ?? this.useSymbols,
      useNumbers: useNumbers ?? this.useNumbers,
      useUppercase: useUppercase ?? this.useUppercase,
      useLowercase: useLowercase ?? this.useLowercase,
    );
  }
}