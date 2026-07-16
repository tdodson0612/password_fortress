// lib/screens/password_details/password_details_screen.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';

class PasswordDetailsScreen
    extends StatelessWidget {
  final PasswordEntry entry;

  const PasswordDetailsScreen({
    super.key,
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          entry.title,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Text(
              entry.website,
            ),

            const SizedBox(
              height: 12,
            ),

            Text(
              entry.username,
            ),

            const SizedBox(
              height: 12,
            ),

            const Text(
              '••••••••••',
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              entry.notes,
            ),
          ],
        ),
      ),
    );
  }
}