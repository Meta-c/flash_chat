import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/input_text_field.dart';
import 'package:flash_chat/welcome_screen_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            InputTextField(
              hintText: 'Enter Your Email',
            ),
            SizedBox(
              height: 8.0,
            ),
            InputTextField(hintText: 'Enter Your Password'),
            SizedBox(
              height: 24.0,
            ),
            SizedBox(
              height: 24.0,
            ),
            WelcomeScreenButtons(
                buttonText: 'Login',
                buttonColor: Colors.lightBlueAccent,
                routeName: ChatScreen.id),
          ],
        ),
      ),
    );
  }
}
