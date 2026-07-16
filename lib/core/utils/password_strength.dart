// lib/core/utils/password_strength.dart

enum PasswordStrength {
  veryWeak,
  weak,
  medium,
  strong,
  veryStrong,
}

class PasswordStrengthCalculator {
  PasswordStrengthCalculator._();

  static PasswordStrength calculate(String password) {
    var score = 0;

    if (password.length >= 8) {
      score++;
    }

    if (password.length >= 16) {
      score++;
    }

    if (password.contains(RegExp('[A-Z]'))) {
      score++;
    }

    if (password.contains(RegExp('[a-z]'))) {
      score++;
    }

    if (password.contains(RegExp('[0-9]'))) {
      score++;
    }

    if (password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      score++;
    }

    switch (score) {
      case 0:
      case 1:
        return PasswordStrength.veryWeak;

      case 2:
        return PasswordStrength.weak;

      case 3:
      case 4:
        return PasswordStrength.medium;

      case 5:
        return PasswordStrength.strong;

      default:
        return PasswordStrength.veryStrong;
    }
  }

  static double score(String password) {
    return calculate(password).index / 4;
  }
}