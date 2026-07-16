// lib/providers/vault_provider.dart

import 'package:flutter/material.dart';

import '../models/password_entry.dart';

class VaultProvider extends ChangeNotifier {
  final List<PasswordEntry> _entries = [];

  bool _isUnlocked = false;

  List<PasswordEntry> get entries => List.unmodifiable(_entries);

  bool get isUnlocked => _isUnlocked;

  List<PasswordEntry> get favorites {
    return _entries
        .where((entry) => entry.isFavorite)
        .toList();
  }

  void unlockVault() {
    _isUnlocked = true;
    notifyListeners();
  }

  void lockVault() {
    _isUnlocked = false;
    notifyListeners();
  }

  void addEntry(PasswordEntry entry) {
    _entries.add(entry);
    notifyListeners();
  }

  void updateEntry(PasswordEntry updatedEntry) {
    final index = _entries.indexWhere(
      (entry) => entry.id == updatedEntry.id,
    );

    if (index == -1) {
      return;
    }

    _entries[index] = updatedEntry;
    notifyListeners();
  }

  void deleteEntry(String id) {
    _entries.removeWhere(
      (entry) => entry.id == id,
    );

    notifyListeners();
  }

  void clearVault() {
    _entries.clear();
    notifyListeners();
  }
}