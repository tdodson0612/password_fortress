// lib/services/encryption/key_storage_service.dart

class KeyStorageService {
  KeyStorageService();

  String? _encryptedKey;

  Future<void> storeEncryptedKey(
    String key,
  ) async {
    _encryptedKey = key;
  }

  Future<String?> retrieveKey() async {
    return _encryptedKey;
  }

  Future<void> deleteKey() async {
    _encryptedKey = null;
  }
}