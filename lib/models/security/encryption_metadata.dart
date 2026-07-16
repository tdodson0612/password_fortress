// lib/models/security/encryption_metadata.dart

class EncryptionMetadata {

  final String algorithm;

  final String keyDerivation;

  final String salt;

  final String initializationVector;


  const EncryptionMetadata({
    required this.algorithm,
    required this.keyDerivation,
    required this.salt,
    required this.initializationVector,
  });


  EncryptionMetadata copyWith({
    String? algorithm,
    String? keyDerivation,
    String? salt,
    String? initializationVector,
  }) {
    return EncryptionMetadata(
      algorithm:
          algorithm ?? this.algorithm,
      keyDerivation:
          keyDerivation ?? this.keyDerivation,
      salt:
          salt ?? this.salt,
      initializationVector:
          initializationVector ?? this.initializationVector,
    );
  }
}