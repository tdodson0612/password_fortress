// lib/screens/biometrics/biometrics_screen.dart

import 'package:flutter/material.dart';


class BiometricsScreen
    extends StatelessWidget {

  const BiometricsScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:
          AppBar(
        title:
            const Text(
          'Biometric Unlock',
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
                  Icons.fingerprint,
                ),


                title:
                    const Text(
                  'Enable Biometrics',
                ),


                subtitle:
                    const Text(
                  'Use Face ID, Touch ID, or fingerprint.',
                ),

                trailing:
                    Switch(
                  value: false,
                  onChanged: null,
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}