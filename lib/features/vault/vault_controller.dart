// lib/features/vault/vault_controller.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';
import '../../services/password_health_service.dart';
import 'vault_state.dart';



class VaultController
    extends ChangeNotifier {


  final PasswordHealthService healthService;


  VaultController({
    required this.healthService,
  });



  VaultState _state =
      VaultState.initial();



  VaultState get state =>
      _state;



  void addPassword(
    PasswordEntry entry,
  ) {

    final updated =
        List<PasswordEntry>.from(
          _state.entries,
        )
          ..add(entry);



    _state =
        _state.copyWith(
      entries:
          updated,
    );


    notifyListeners();
  }



  void updatePassword(
    PasswordEntry updatedEntry,
  ) {

    final updated =
        _state.entries.map(
          (entry) {

            if (entry.id ==
                updatedEntry.id) {

              return updatedEntry;
            }

            return entry;

          },
        ).toList();



    _state =
        _state.copyWith(
      entries:
          updated,
    );


    notifyListeners();
  }



  void deletePassword(
    String id,
  ) {

    _state =
        _state.copyWith(

      entries:
          _state.entries
              .where(
                (entry) =>
                    entry.id != id,
              )
              .toList(),

    );


    notifyListeners();
  }



  List<PasswordEntry>
      get duplicatePasswords =>
          healthService.findDuplicates(
            _state.entries,
          );
}