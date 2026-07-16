// lib/core/crypto/key_derivation_service.dart

abstract class KeyDerivationService {
  /// Creates a cryptographic key from the master password.
  ///
  /// Future implementation:
  /// Argon2id preferred.
  /// PBKDF2 fallback if required.
  Future<String> deriveKey({
    required String masterPassword,
    required String salt,
  });

  /// Creates a cryptographically secure random salt.
  Future<String> generateSalt();
}