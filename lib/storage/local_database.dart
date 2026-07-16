// lib/storage/local_database.dart

class LocalDatabase {

  LocalDatabase._();


  static final LocalDatabase instance =
      LocalDatabase._();



  final Map<String, dynamic> _storage =
      {};



  Future<void> write(
    String key,
    dynamic value,
  ) async {

    _storage[key] = value;
  }



  Future<dynamic> read(
    String key,
  ) async {

    return _storage[key];
  }



  Future<void> delete(
    String key,
  ) async {

    _storage.remove(key);
  }



  Future<void> clear() async {

    _storage.clear();
  }



  bool contains(
    String key,
  ) {

    return _storage.containsKey(
      key,
    );
  }
}