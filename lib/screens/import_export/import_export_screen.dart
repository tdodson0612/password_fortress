// lib/screens/import_export/import_export_screen.dart

import 'package:flutter/material.dart';

class ImportExportScreen
    extends StatelessWidget {

  const ImportExportScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Import / Export',
        ),
      ),
      body:
          Padding(
        padding:
            const EdgeInsets.all(16),
        child:
            Column(
          children: [

            FilledButton(
              onPressed: () {},
              child:
                  const Text(
                'Export Vault',
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            FilledButton(
              onPressed: () {},
              child:
                  const Text(
                'Import Vault',
              ),
            ),
          ],
        ),
      ),
    );
  }
}