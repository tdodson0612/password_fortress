// lib/widgets/search/search_bar_widget.dart

import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {

  final ValueChanged<String> onChanged;

  const SearchBarWidget({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration:
          InputDecoration(
        hintText:
            'Search passwords...',
        prefixIcon:
            const Icon(
          Icons.search,
        ),
        border:
            OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(16),
        ),
      ),
    );
  }
}