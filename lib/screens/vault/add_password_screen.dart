// lib/screens/vault/add_password_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/forms/text_input_field.dart';


class AddPasswordScreen
    extends StatefulWidget {

  const AddPasswordScreen({
    super.key,
  });


  @override
  State<AddPasswordScreen>
      createState() =>
          _AddPasswordScreenState();
}



class _AddPasswordScreenState
    extends State<AddPasswordScreen> {


  final websiteController =
      TextEditingController();


  final usernameController =
      TextEditingController();


  final passwordController =
      TextEditingController();


  final notesController =
      TextEditingController();



  @override
  void dispose() {

    websiteController.dispose();

    usernameController.dispose();

    passwordController.dispose();

    notesController.dispose();

    super.dispose();
  }



  void savePassword() {

    Navigator.pop(context);

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:
          AppBar(
        title:
            const Text(
          'Add Password',
        ),
      ),


      body:
          Padding(

        padding:
            const EdgeInsets.all(16),

        child:
            Column(

          children: [

            TextInputField(
              controller:
                  websiteController,
              label:
                  'Website',
            ),


            TextInputField(
              controller:
                  usernameController,
              label:
                  'Username',
            ),


            TextInputField(
              controller:
                  passwordController,
              label:
                  'Password',
              obscureText:
                  true,
            ),


            TextInputField(
              controller:
                  notesController,
              label:
                  'Notes',
            ),


            const SizedBox(
              height: 24,
            ),


            FilledButton(

              onPressed:
                  savePassword,

              child:
                  const Text(
                'Save',
              ),

            ),
          ],
        ),
      ),
    );
  }
}