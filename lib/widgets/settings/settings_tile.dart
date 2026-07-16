// lib/widgets/settings/settings_tile.dart

import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {

  final String title;

  final String? subtitle;

  final IconData icon;

  final VoidCallback? onTap;


  const SettingsTile({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      child: ListTile(

        onTap: onTap,

        leading:
            Icon(icon),

        title:
            Text(title),

        subtitle:
            subtitle == null
                ? null
                : Text(subtitle!),

        trailing:
            const Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}