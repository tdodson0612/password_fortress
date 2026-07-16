// lib/models/security/master_password.dart

class MasterPassword {
  final String salt;

  final String passwordHash;

  final DateTime createdAt;

  const MasterPassword({
    required this.salt,
    required this.passwordHash,
    required this.createdAt,
  });
}