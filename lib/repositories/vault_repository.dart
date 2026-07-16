// lib/repositories/vault_repository.dart

import '../models/password_entry.dart';

abstract class VaultRepository {
  Future<List<PasswordEntry>> getEntries();

  Future<void> addEntry(
    PasswordEntry entry,
  );

  Future<void> updateEntry(
    PasswordEntry entry,
  );

  Future<void> deleteEntry(
    String id,
  );

  Future<void> clearVault();
}