// lib/widgets/cards/password_card.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';

class PasswordCard extends StatelessWidget {
  final PasswordEntry entry;
  final VoidCallback? onTap;

  const PasswordCard({
    super.key,
    required this.entry,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: const Icon(
          Icons.lock_outline,
        ),
        title: Text(
          entry.title,
        ),
        subtitle: Text(
          entry.website,
        ),
        trailing: entry.isFavorite
            ? const Icon(
                Icons.star,
              )
            : null,
      ),
    );
  }
}