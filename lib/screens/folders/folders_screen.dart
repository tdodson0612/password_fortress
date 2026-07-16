// lib/screens/folders/folders_screen.dart

import 'package:flutter/material.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Folders',
        ),
      ),
      body:
          ListView(
        padding:
            const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading:
                Icon(
              Icons.folder,
            ),
            title:
                Text(
              'Personal',
            ),
          ),

          ListTile(
            leading:
                Icon(
              Icons.folder,
            ),
            title:
                Text(
              'Work',
            ),
          ),

          ListTile(
            leading:
                Icon(
              Icons.folder,
            ),
            title:
                Text(
              'Finance',
            ),
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(
        onPressed: () {},
        child:
            const Icon(
          Icons.add,
        ),
      ),
    );
  }
}