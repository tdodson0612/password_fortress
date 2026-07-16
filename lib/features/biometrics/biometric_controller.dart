// lib/features/biometrics/biometric_controller.dart

import 'package:flutter/material.dart';

import '../../services/biometrics/biometric_service.dart';


class BiometricController
    extends ChangeNotifier {

  final BiometricService service;


  BiometricController({
    required this.service,
  });


  bool _enabled = false;


  bool get enabled =>
      _enabled;



  Future<bool> authenticate() async {

    final result =
        await service.authenticate();


    if (result) {

      _enabled = true;

      notifyListeners();

    }


    return result;
  }



  void disable() {

    _enabled = false;

    notifyListeners();
  }
}