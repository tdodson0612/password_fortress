// lib/features/vault/vault_controller.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';
import 'vault_state.dart';

class VaultController extends ChangeNotifier {
  VaultState _state =
      VaultState.initial();

  VaultState get state => _state;

  void unlock() {
    _state = _state.copyWith(
      isUnlocked: true,
    );

    notifyListeners();
  }

  void lock() {
    _state = _state.copyWith(
      isUnlocked: false,
    );

    notifyListeners();
  }

  void addPassword(
    PasswordEntry entry,
  ) {
    final updated =
        List<PasswordEntry>.from(
          _state.entries,
        )
          ..add(entry);

    _state = _state.copyWith(
      entries: updated,
    );

    notifyListeners();
  }

  void deletePassword(
    String id,
  ) {
    final updated =
        _state.entries
            .where(
              (entry) =>
                  entry.id != id,
            )
            .toList();

    _state = _state.copyWith(
      entries: updated,
    );

    notifyListeners();
  }
}