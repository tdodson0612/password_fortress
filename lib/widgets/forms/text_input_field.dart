// lib/widgets/forms/text_input_field.dart

import 'package:flutter/material.dart';



class TextInputField
    extends StatelessWidget {


  final TextEditingController controller;

  final String label;

  final bool obscureText;



  const TextInputField({
    super.key,
    required this.controller,
    required this.label,
    this.obscureText = false,
  });



  @override
  Widget build(BuildContext context) {


    return Padding(

      padding:
          const EdgeInsets.only(
        bottom: 12,
      ),


      child:
          TextField(

        controller:
            controller,


        obscureText:
            obscureText,


        decoration:
            InputDecoration(

          labelText:
              label,


          border:
              OutlineInputBorder(

            borderRadius:
                BorderRadius.circular(
              16,
            ),

          ),

        ),

      ),
    );
  }
} 