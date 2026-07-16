// lib/services/encryption/key_storage_service.dart

class KeyStorageService {

  String? _encryptedKey;


  Future<void> storeKey(
    String encryptedKey,
  ) async {
    _encryptedKey = encryptedKey;
  }


  Future<String?> retrieveKey() async {
    return _encryptedKey;
  }


  Future<void> removeKey() async {
    _encryptedKey = null;
  }


  bool get hasKey {
    return _encryptedKey != null;
  }
}