// lib/widgets/vault/empty_vault_widget.dart

import 'package:flutter/material.dart';

class EmptyVaultWidget extends StatelessWidget {

  final VoidCallback? onAdd;


  const EmptyVaultWidget({
    super.key,
    this.onAdd,
  });


  @override
  Widget build(BuildContext context) {

    return Center(

      child:
          Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          const Icon(
            Icons.lock_outline,
            size: 72,
          ),


          const SizedBox(
            height: 16,
          ),


          Text(
            'Your vault is empty',
            style:
                Theme.of(context)
                    .textTheme
                    .headlineSmall,
          ),


          const SizedBox(
            height: 8,
          ),


          const Text(
            'Add your first password to get started.',
          ),


          const SizedBox(
            height: 20,
          ),


          FilledButton.icon(

            onPressed:
                onAdd,

            icon:
                const Icon(
              Icons.add,
            ),

            label:
                const Text(
              'Add Password',
            ),
          ),
        ],
      ),
    );
  }
}