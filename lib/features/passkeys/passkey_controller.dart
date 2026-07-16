// lib/features/passkeys/passkey_controller.dart

import 'package:flutter/material.dart';

import '../../services/passkeys/passkey_service.dart';


class PasskeyController
    extends ChangeNotifier {

  final PasskeyService service;


  PasskeyController({
    required this.service,
  });


  bool _available = false;


  bool get available =>
      _available;



  Future<void> checkAvailability() async {

    _available =
        await service.isSupported();


    notifyListeners();
  }
}