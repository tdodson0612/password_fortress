// lib/services/storage/vault_storage_service.dart

import '../../storage/local_database.dart';


class VaultStorageService {


  final LocalDatabase database;


  VaultStorageService({
    required this.database,
  });



  static const String vaultKey =
      'encrypted_vault';



  Future<void> saveEncryptedVault(
    String encryptedVault,
  ) async {

    await database.write(
      vaultKey,
      encryptedVault,
    );
  }



  Future<String?> loadEncryptedVault() async {

    final result =
        await database.read(
      vaultKey,
    );


    return result as String?;
  }



  Future<void> deleteVault() async {

    await database.delete(
      vaultKey,
    );
  }



  bool get hasVault {

    return database.contains(
      vaultKey,
    );
  }
}