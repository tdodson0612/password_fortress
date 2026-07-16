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
      child: InkWell(
        onTap: onTap,
        borderRadius:
            BorderRadius.circular(16),
        child: Padding(
          padding:
              const EdgeInsets.all(16),
          child: Row(
            children: [

              const Icon(
                Icons.lock_outline,
              ),

              const SizedBox(
                width: 12,
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Text(
                      entry.title,
                      style:
                          Theme.of(context)
                              .textTheme
                              .titleMedium,
                    ),

                    Text(
                      entry.website,
                    ),
                  ],
                ),
              ),

              if (entry.isFavorite)
                const Icon(
                  Icons.star,
                ),
            ],
          ),
        ),
      ),
    );
  }
}