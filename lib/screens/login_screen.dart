import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/input_text_field.dart';
import 'package:flash_chat/welcome_screen_button.dart';
import 'welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: kLogoHeroTag,
                  child: Container(
                    height: 200.0,
                    child: TextButton(
                        child: Image.asset('images/logo.png'),
                        onPressed: () => setState(() {
                              Navigator.popAndPushNamed(
                                  context, WelcomeScreen.id);
                            })),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              InputTextField(
                hintText: 'Enter Your Email',
                onchange: (input) => email = input,
                obscure: false,
              ),
              SizedBox(
                height: 8.0,
              ),
              InputTextField(
                hintText: 'Enter Your Password',
                onchange: (input) => password = input,
                obscure: true,
              ),
              SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 24.0,
              ),
              WelcomeScreenButtons(
                  buttonText: 'Login',
                  buttonColor: Colors.lightBlueAccent,
                  onPress: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final token = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (token != null)
                        Navigator.pushNamed(context, ChatScreen.id);
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      setState(() {
                        showSpinner = false;
                      });
                      print(e);
                      AlertDialog;
                      Error();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
