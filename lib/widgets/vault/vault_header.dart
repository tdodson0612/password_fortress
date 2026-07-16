// lib/widgets/vault/vault_header.dart

import 'package:flutter/material.dart';

class VaultHeader extends StatelessWidget {

  final int passwordCount;


  const VaultHeader({
    super.key,
    required this.passwordCount,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(

        padding:
            const EdgeInsets.all(20),

        child:
            Row(

          children: [

            const Icon(
              Icons.shield,
              size: 40,
            ),


            const SizedBox(
              width: 16,
            ),


            Expanded(

              child:
                  Column(

                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    'Password Vault',
                    style:
                        Theme.of(context)
                            .textTheme
                            .titleLarge,
                  ),


                  Text(
                    '$passwordCount passwords secured',
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}