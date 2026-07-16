// lib/features/password_generator/password_strength_meter.dart

import 'package:flutter/material.dart';

import '../../core/utils/password_strength.dart';

class PasswordStrengthMeter extends StatelessWidget {
  final String password;

  const PasswordStrengthMeter({
    super.key,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final strength =
        PasswordStrengthCalculator.calculate(
      password,
    );

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          'Strength: ${strength.name}',
        ),
        const SizedBox(
          height: 8,
        ),
        LinearProgressIndicator(
          value:
              PasswordStrengthCalculator.score(
            password,
          ),
        ),
      ],
    );
  }
}