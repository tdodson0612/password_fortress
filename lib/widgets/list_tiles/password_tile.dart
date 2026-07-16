// lib/widgets/list_tiles/password_tile.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';

class PasswordTile extends StatelessWidget {
  final PasswordEntry entry;

  final VoidCallback? onTap;

  const PasswordTile({
    super.key,
    required this.entry,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading:
          const CircleAvatar(
        child: Icon(
          Icons.key,
        ),
      ),
      title: Text(
        entry.title,
      ),
      subtitle: Text(
        entry.username,
      ),
      trailing:
          entry.isFavorite
              ? const Icon(
                  Icons.star,
                )
              : null,
    );
  }
}