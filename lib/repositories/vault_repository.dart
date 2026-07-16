// lib/repositories/vault_repository.dart

import '../services/storage/vault_storage_service.dart';


class VaultRepository {


  final VaultStorageService storage;


  VaultRepository({
    required this.storage,
  });



  Future<void> saveVault(
    String encryptedData,
  ) async {

    await storage.saveEncryptedVault(
      encryptedData,
    );
  }



  Future<String?> loadVault() async {

    return storage.loadEncryptedVault();
  }



  Future<void> deleteVault() async {

    await storage.deleteVault();
  }



  bool get exists {

    return storage.hasVault;
  }
}