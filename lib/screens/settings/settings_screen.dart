// lib/screens/settings/settings_screen.dart

import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.settings,
        ),
      ),
      body: ListView(
        padding:
            const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading:
                  const Icon(
                Icons.dark_mode,
              ),
              title:
                  const Text(
                'Theme',
              ),
              subtitle:
                  const Text(
                'Light, dark, or system',
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading:
                  const Icon(
                Icons.lock_clock,
              ),
              title:
                  const Text(
                'Auto Lock',
              ),
              subtitle:
                  const Text(
                'Lock vault after inactivity',
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading:
                  const Icon(
                Icons.content_copy,
              ),
              title:
                  const Text(
                'Clipboard Timeout',
              ),
              subtitle:
                  const Text(
                'Automatically clear copied passwords',
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading:
                  const Icon(
                Icons.import_export,
              ),
              title:
                  const Text(
                'Import / Export',
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading:
                  const Icon(
                Icons.info_outline,
              ),
              title:
                  const Text(
                'About Password Fortress',
              ),
            ),
          ),
        ],
      ),
    );
  }
}