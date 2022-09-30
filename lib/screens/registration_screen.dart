import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/welcome_screen_button.dart';
import 'package:flash_chat/registration_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: kLogoHeroTag,
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RegistrationTextField(
              hintText: 'Enter Your Email',
            ),
            SizedBox(
              height: 8.0,
            ),
            RegistrationTextField(hintText: 'Enter Your Password'),
            SizedBox(
              height: 24.0,
            ),
            WelcomeScreenButtons(
                buttonText: 'Register',
                buttonColor: Colors.blueAccent,
                routeName: RegistrationScreen.id),
          ],
        ),
      ),
    );
  }
}
