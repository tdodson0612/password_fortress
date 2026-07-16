// lib/features/security/security_controller.dart

import 'package:flutter/material.dart';

import '../../services/encryption/key_storage_service.dart';

class SecurityController
    extends ChangeNotifier {

  final KeyStorageService keyStorage;


  SecurityController({
    required this.keyStorage,
  });


  bool _vaultUnlocked = false;


  bool get vaultUnlocked =>
      _vaultUnlocked;


  Future<void> unlockVault(
    String key,
  ) async {

    await keyStorage.storeKey(
      key,
    );

    _vaultUnlocked = true;

    notifyListeners();
  }


  Future<void> lockVault() async {

    await keyStorage.removeKey();

    _vaultUnlocked = false;

    notifyListeners();
  }
}