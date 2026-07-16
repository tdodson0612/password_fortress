// lib/services/password_health_service.dart

import '../models/generator/password_strength_result.dart';
import '../models/password_entry.dart';

class PasswordHealthService {

  PasswordHealthService();


  PasswordStrengthResult analyze(
    String password,
  ) {

    var score = 0;

    if (password.length >= 12) {
      score++;
    }

    if (password.length >= 20) {
      score++;
    }

    if (password.contains(
      RegExp('[A-Z]'),
    )) {
      score++;
    }

    if (password.contains(
      RegExp('[a-z]'),
    )) {
      score++;
    }

    if (password.contains(
      RegExp('[0-9]'),
    )) {
      score++;
    }

    if (password.contains(
      RegExp(r'[!@#$%^&*]'),
    )) {
      score++;
    }


    return PasswordStrengthResult(
      score: score,
      isStrong: score >= 5,
    );
  }


  List<PasswordEntry> findDuplicates(
    List<PasswordEntry> entries,
  ) {

    final duplicates = <PasswordEntry>[];

    for (var i = 0;
        i < entries.length;
        i++) {

      for (var j = i + 1;
          j < entries.length;
          j++) {

        if (entries[i].password ==
            entries[j].password) {

          duplicates.add(
            entries[i],
          );
        }
      }
    }

    return duplicates;
  }
}