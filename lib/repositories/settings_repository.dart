// lib/repositories/settings_repository.dart

import '../storage/local_database.dart';


class SettingsRepository {


  final LocalDatabase database;


  SettingsRepository({
    required this.database,
  });



  static const String settingsKey =
      'app_settings';



  Future<void> saveSettings(
    Map<String, dynamic> settings,
  ) async {

    await database.write(
      settingsKey,
      settings,
    );
  }



  Future<Map<String, dynamic>?>
      loadSettings() async {

    final result =
        await database.read(
      settingsKey,
    );


    if (result == null) {
      return null;
    }


    return Map<String, dynamic>.from(
      result as Map,
    );
  }
}