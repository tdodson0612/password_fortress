// lib/screens/onboarding/create_master_password_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/forms/password_field.dart';

class CreateMasterPasswordScreen
    extends StatefulWidget {
  const CreateMasterPasswordScreen({
    super.key,
  });

  @override
  State<CreateMasterPasswordScreen>
      createState() =>
          _CreateMasterPasswordScreenState();
}

class _CreateMasterPasswordScreenState
    extends State<CreateMasterPasswordScreen> {

  final TextEditingController _controller =
      TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _createVault() {
    if (_controller.text.length < 12) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'Master password must be at least 12 characters.',
          ),
        ),
      );

      return;
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Create Master Password',
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            PasswordField(
              controller:
                  _controller,
              label:
                  'Master Password',
            ),

            const SizedBox(
              height: 24,
            ),

            FilledButton(
              onPressed:
                  _createVault,
              child:
                  const Text(
                'Create Vault',
              ),
            ),
          ],
        ),
      ),
    );
  }
}