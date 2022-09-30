import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/main.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/welcome_screen_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: kLogoHeroTag,
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText('Flash Chat',
                      textStyle: kWelcomeScreenTextStyle,
                      speed: const Duration(milliseconds: 200)),
                ])
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            WelcomeScreenButtons(
              buttonText: 'Login',
              buttonColor: Colors.lightBlueAccent,
              routeName: LoginScreen.id,
            ),
            WelcomeScreenButtons(
                buttonText: 'Register',
                buttonColor: Colors.blueAccent,
                routeName: RegistrationScreen.id)
          ],
        ),
      ),
    );
  }
}
