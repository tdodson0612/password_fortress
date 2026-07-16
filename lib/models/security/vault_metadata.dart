// lib/models/security/vault_metadata.dart

class VaultMetadata {

  final String vaultId;

  final String salt;

  final DateTime createdAt;

  final DateTime? lastUnlocked;

  final bool isSetupComplete;


  const VaultMetadata({
    required this.vaultId,
    required this.salt,
    required this.createdAt,
    required this.isSetupComplete,
    this.lastUnlocked,
  });


  VaultMetadata copyWith({
    DateTime? lastUnlocked,
    bool? isSetupComplete,
  }) {
    return VaultMetadata(
      vaultId:
          vaultId,
      salt:
          salt,
      createdAt:
          createdAt,
      lastUnlocked:
          lastUnlocked ?? this.lastUnlocked,
      isSetupComplete:
          isSetupComplete ?? this.isSetupComplete,
    );
  }
}