import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'utility/splashScreen.dart';
import 'loginOption.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SplashScreenView(
          home: LoginOption(),
          duration: 3000,
          imageSize: 200,
          imageSrc: "assets/images/logoConnect.png",
          text: "Let's Connect !",
          textType: TextType.TyperAnimatedText,
          textStyle: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
