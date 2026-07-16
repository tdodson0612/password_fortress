// lib/core/crypto/encryption_service.dart

abstract class EncryptionService {
  /// Encrypts sensitive data.
  ///
  /// Future implementation:
  /// AES-256-GCM with random IV.
  Future<String> encrypt(String plainText, String key);

  /// Decrypts encrypted sensitive data.
  ///
  /// Future implementation:
  /// AES-256-GCM authentication verification.
  Future<String> decrypt(String encryptedText, String key);
}