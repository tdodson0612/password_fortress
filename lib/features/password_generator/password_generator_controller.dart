// lib/features/password_generator/password_generator_controller.dart

import '../../services/password_generator_service.dart';

class PasswordGeneratorController {
  final PasswordGeneratorService service;

  PasswordGeneratorController({
    required this.service,
  });

  String generate({
    required int length,
    required bool uppercase,
    required bool lowercase,
    required bool numbers,
    required bool symbols,
  }) {
    return service.generate(
      length: length,
      uppercase: uppercase,
      lowercase: lowercase,
      numbers: numbers,
      symbols: symbols,
    );
  }

  double entropy(String password) {
    return service.calculateEntropy(
      password: password,
    );
  }
}