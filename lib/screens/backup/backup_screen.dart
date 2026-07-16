// lib/screens/backup/backup_screen.dart

import 'package:flutter/material.dart';

class BackupScreen
    extends StatelessWidget {

  const BackupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Vault Backup',
        ),
      ),
      body:
          Center(
        child:
            FilledButton(
          onPressed: () {},
          child:
              const Text(
            'Create Backup',
          ),
        ),
      ),
    );
  }
}