import 'package:flutter/material.dart';

Widget navbutton({
    required String name,
    required IconData buttonIcon,
    required Color buttonColor,
    required void Function() buttonAction,
  }) {
    return TextButton.icon(
              style: const ButtonStyle(),
              onPressed: buttonAction,
              icon: Icon(buttonIcon,color: buttonColor,),
              label: Text(name,style: const TextStyle(color: Colors.black),),
              ); 
    
    
  }