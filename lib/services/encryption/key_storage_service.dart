// lib/services/encryption/key_storage_service.dart

import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class KeyStorageService {


  final FlutterSecureStorage storage =
      const FlutterSecureStorage();



  static const String keyName =
      'vault_key';



  Future<void> storeKey(
    String key,
  ) async {

    await storage.write(
      key: keyName,
      value: key,
    );
  }



  Future<String?> retrieveKey() async {

    return storage.read(
      key: keyName,
    );
  }



  Future<void> deleteKey() async {

    await storage.delete(
      key: keyName,
    );
  }
}