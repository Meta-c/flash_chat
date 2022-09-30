import 'package:flutter/material.dart';

class RegistrationTextField extends StatelessWidget {
  RegistrationTextField({required this.hintText});

  String hintText = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black),
      onChanged: (value) {
        //Do something with the user input.
      },
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
