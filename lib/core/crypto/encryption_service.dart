// lib/core/crypto/encryption_service.dart

abstract class EncryptionService {


  Future<String> encrypt(
    String plainText,
    List<int> key,
  );



  Future<String> decrypt(
    String encryptedText,
    List<int> key,
  );
}