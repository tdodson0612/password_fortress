// lib/screens/onboarding/welcome_screen.dart

import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../navigation/app_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.shield,
              size: 80,
            ),

            const SizedBox(
              height: 24,
            ),

            Text(
              AppStrings.appName,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium,
            ),

            const SizedBox(
              height: 12,
            ),

            const Text(
              'Your secure offline password manager.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 32,
            ),

            FilledButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRouter.createMasterPassword,
                );
              },
              child: const Text(
                'Create Vault',
              ),
            ),
          ],
        ),
      ),
    );
  }
}