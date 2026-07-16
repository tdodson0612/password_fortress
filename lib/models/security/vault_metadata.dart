// lib/models/security/vault_metadata.dart

class VaultMetadata {
  final String vaultId;

  final String salt;

  final DateTime createdAt;

  final DateTime? lastUnlocked;

  const VaultMetadata({
    required this.vaultId,
    required this.salt,
    required this.createdAt,
    this.lastUnlocked,
  });

  VaultMetadata copyWith({
    DateTime? lastUnlocked,
  }) {
    return VaultMetadata(
      vaultId: vaultId,
      salt: salt,
      createdAt: createdAt,
      lastUnlocked:
          lastUnlocked ?? this.lastUnlocked,
    );
  }
}