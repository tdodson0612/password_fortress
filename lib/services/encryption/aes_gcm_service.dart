// lib/services/encryption/aes_gcm_service.dart

import '../../core/crypto/encryption_service.dart';

class AesGcmService implements EncryptionService {

  AesGcmService();


  @override
  Future<String> encrypt(
    String plainText,
    String key,
  ) async {

    /*
      Future implementation:

      AES-256-GCM

      Requirements:
      - Random IV every encryption
      - Authentication tag verification
      - No key reuse
    */

    return plainText;
  }


  @override
  Future<String> decrypt(
    String encryptedText,
    String key,
  ) async {

    /*
      Future implementation:

      AES-GCM decrypt and verify tag
    */

    return encryptedText;
  }
}