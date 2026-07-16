// lib/screens/vault/vault_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/cards/password_card.dart';
import 'add_password_screen.dart';

class VaultScreen extends StatelessWidget {

  const VaultScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text(
          'Password Vault',
        ),
      ),


      body: ListView(
        padding:
            const EdgeInsets.all(16),

        children: const [

          Text(
            'Your saved passwords will appear here.',
          ),

        ],
      ),


      floatingActionButton:
          FloatingActionButton(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const AddPasswordScreen(),
            ),
          );

        },

        child:
            const Icon(
          Icons.add,
        ),
      ),
    );
  }
}