// lib/widgets/security/security_status_card.dart

import 'package:flutter/material.dart';


class SecurityStatusCard
    extends StatelessWidget {

  final String title;

  final String subtitle;

  final IconData icon;


  const SecurityStatusCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      child: ListTile(

        leading:
            Icon(icon),

        title:
            Text(title),

        subtitle:
            Text(subtitle),

      ),
    );
  }
}