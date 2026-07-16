// lib/features/vault/vault_state.dart

import '../../models/password_entry.dart';

class VaultState {
  final bool isUnlocked;

  final bool isLoading;

  final List<PasswordEntry> entries;

  const VaultState({
    required this.isUnlocked,
    required this.isLoading,
    required this.entries,
  });

  factory VaultState.initial() {
    return const VaultState(
      isUnlocked: false,
      isLoading: false,
      entries: [],
    );
  }

  VaultState copyWith({
    bool? isUnlocked,
    bool? isLoading,
    List<PasswordEntry>? entries,
  }) {
    return VaultState(
      isUnlocked:
          isUnlocked ?? this.isUnlocked,
      isLoading:
          isLoading ?? this.isLoading,
      entries:
          entries ?? this.entries,
    );
  }
}