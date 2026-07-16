// lib/services/password_generator_service.dart

import 'dart:math';

class PasswordGeneratorService {
  PasswordGeneratorService();

  static const String _uppercase =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  static const String _lowercase =
      'abcdefghijklmnopqrstuvwxyz';

  static const String _numbers =
      '0123456789';

  static const String _symbols =
      '!@#\$%^&*()-_=+';

  String generate({
    required int length,
    bool uppercase = true,
    bool lowercase = true,
    bool numbers = true,
    bool symbols = true,
  }) {
    var characters = '';

    if (uppercase) {
      characters += _uppercase;
    }

    if (lowercase) {
      characters += _lowercase;
    }

    if (numbers) {
      characters += _numbers;
    }

    if (symbols) {
      characters += _symbols;
    }

    if (characters.isEmpty) {
      return '';
    }

    final random = Random.secure();

    return List.generate(
      length,
      (_) => characters[
          random.nextInt(characters.length)],
    ).join();
  }
}