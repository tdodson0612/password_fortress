// lib/screens/passkeys/passkeys_screen.dart

import 'package:flutter/material.dart';


class PasskeysScreen
    extends StatelessWidget {

  const PasskeysScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:
          AppBar(
        title:
            const Text(
          'Passkeys',
        ),
      ),


      body:
          Padding(

        padding:
            const EdgeInsets.all(16),


        child:
            Column(

          children: [

            Card(

              child:
                  ListTile(

                leading:
                    const Icon(
                  Icons.key,
                ),

                title:
                    const Text(
                  'Passkeys',
                ),

                subtitle:
                    const Text(
                  'Future passwordless authentication support.',
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}