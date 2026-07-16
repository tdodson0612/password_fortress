// lib/storage/local_database.dart

class LocalDatabase {
  LocalDatabase();

  bool _initialized = false;

  bool get isInitialized => _initialized;

  Future<void> initialize() async {
    _initialized = true;
  }

  Future<void> close() async {
    _initialized = false;
  }
}