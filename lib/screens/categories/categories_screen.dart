// lib/screens/categories/categories_screen.dart

import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Categories',
        ),
      ),
      body:
          GridView.count(
        padding:
            const EdgeInsets.all(16),
        crossAxisCount: 2,
        children: const [

          Card(
            child:
                Center(
              child:
                  Text(
                'Login',
              ),
            ),
          ),

          Card(
            child:
                Center(
              child:
                  Text(
                'Credit Cards',
              ),
            ),
          ),

          Card(
            child:
                Center(
              child:
                  Text(
                'Secure Notes',
              ),
            ),
          ),

          Card(
            child:
                Center(
              child:
                  Text(
                'Identity',
              ),
            ),
          ),
        ],
      ),
    );
  }
}