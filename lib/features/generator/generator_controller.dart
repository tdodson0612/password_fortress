// lib/features/generator/generator_controller.dart

import 'package:flutter/material.dart';

import '../../services/password_generator_service.dart';


class GeneratorController
    extends ChangeNotifier {


  final PasswordGeneratorService service;


  GeneratorController({
    required this.service,
  });



  String _password = '';



  String get password =>
      _password;



  void generate({
    required int length,
    required bool uppercase,
    required bool lowercase,
    required bool numbers,
    required bool symbols,
  }) {


    _password =
        service.generate(
      length: length,
      uppercase: uppercase,
      lowercase: lowercase,
      numbers: numbers,
      symbols: symbols,
    );


    notifyListeners();
  }
}