// lib/screens/password_health/password_health_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/security/security_status_card.dart';

class PasswordHealthScreen
    extends StatelessWidget {

  const PasswordHealthScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text(
          'Password Health',
        ),
      ),


      body: ListView(

        padding:
            const EdgeInsets.all(16),

        children: const [

          SecurityStatusCard(
            title:
                'Security Score',
            subtitle:
                'Your vault security will appear here.',
            icon:
                Icons.security,
          ),


          SecurityStatusCard(
            title:
                'Weak Passwords',
            subtitle:
                'No weak passwords detected yet.',
            icon:
                Icons.warning,
          ),


          SecurityStatusCard(
            title:
                'Duplicate Passwords',
            subtitle:
                'Duplicate detection enabled.',
            icon:
                Icons.copy,
          ),

        ],
      ),
    );
  }
}