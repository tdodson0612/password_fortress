// lib/widgets/common/app_card.dart

import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {

  final Widget child;

  final VoidCallback? onTap;


  const AppCard({
    super.key,
    required this.child,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child:
          InkWell(
        onTap: onTap,
        borderRadius:
            BorderRadius.circular(16),
        child:
            Padding(
          padding:
              const EdgeInsets.all(16),
          child:
              child,
        ),
      ),
    );
  }
}