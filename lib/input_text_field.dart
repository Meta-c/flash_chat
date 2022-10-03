import 'dart:ffi';

import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  InputTextField(
      {required this.hintText,
      //  required this.input,
      required this.obscure,
      required this.onchange});

  String hintText = '';
  String input = '';
  bool obscure = false;
  late String Function(String input) onchange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black),
      onChanged: onchange,
      obscureText: obscure,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.blueGrey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
