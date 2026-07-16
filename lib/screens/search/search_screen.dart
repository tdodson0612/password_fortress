// lib/screens/search/search_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/search/search_bar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() =>
      _SearchScreenState();
}

class _SearchScreenState
    extends State<SearchScreen> {

  String _query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Search'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            SearchBarWidget(
              onChanged: (value) {
                setState(() {
                  _query = value;
                });
              },
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              _query.isEmpty
                  ? 'Start searching'
                  : 'Searching for $_query',
            ),
          ],
        ),
      ),
    );
  }
}