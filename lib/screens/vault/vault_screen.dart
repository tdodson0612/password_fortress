// lib/screens/vault/vault_screen.dart

import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';

class VaultScreen extends StatelessWidget {
  const VaultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.passwords,
        ),
      ),
      body: const Center(
        child: Text(
          'Your passwords will appear here.',
        ),
      ),
      floatingActionButton:
          FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}