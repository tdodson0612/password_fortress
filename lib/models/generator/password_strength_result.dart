// lib/models/generator/password_strength_result.dart

class PasswordStrengthResult {

  final int score;

  final bool isStrong;


  const PasswordStrengthResult({
    required this.score,
    required this.isStrong,
  });


  String get label {

    if (score <= 1) {
      return 'Very Weak';
    }

    if (score <= 3) {
      return 'Weak';
    }

    if (score <= 4) {
      return 'Medium';
    }

    return 'Strong';
  }
}