// lib/screens/password_details/password_details_screen.dart

import 'package:flutter/material.dart';

import '../../models/password_entry.dart';



class PasswordDetailsScreen
    extends StatefulWidget {


  final PasswordEntry entry;


  const PasswordDetailsScreen({
    super.key,
    required this.entry,
  });



  @override
  State<PasswordDetailsScreen>
      createState() =>
          _PasswordDetailsScreenState();
}



class _PasswordDetailsScreenState
    extends State<PasswordDetailsScreen> {


  bool showPassword = false;



  @override
  Widget build(BuildContext context) {


    final entry =
        widget.entry;



    return Scaffold(

      appBar:
          AppBar(

        title:
            Text(
          entry.title,
        ),

      ),


      body:
          ListView(

        padding:
            const EdgeInsets.all(16),


        children: [


          ListTile(
            title:
                const Text(
              'Website',
            ),

            subtitle:
                Text(
              entry.website,
            ),
          ),



          ListTile(
            title:
                const Text(
              'Username',
            ),

            subtitle:
                Text(
              entry.username,
            ),
          ),



          ListTile(

            title:
                const Text(
              'Password',
            ),

            subtitle:
                Text(
              showPassword
                  ? entry.password
                  : '••••••••',
            ),


            trailing:
                IconButton(

              icon:
                  Icon(

                showPassword
                    ? Icons.visibility_off
                    : Icons.visibility,

              ),


              onPressed: () {

                setState(() {

                  showPassword =
                      !showPassword;

                });

              },

            ),
          ),



          ListTile(

            title:
                const Text(
              'Notes',
            ),

            subtitle:
                Text(
              entry.notes,
            ),

          ),

        ],
      ),
    );
  }
}