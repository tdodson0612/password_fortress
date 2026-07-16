// lib/screens/lock/lock_screen.dart

import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock,
              size: 64,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.unlockVault,
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text(
                'Unlock',
              ),
            ),
          ],
        ),
      ),
    );
  }
}