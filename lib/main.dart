import 'package:flutter/material.dart';
import 'screens/WeclomeScreen.dart';

void main() {
  runApp(Connect());
}

class Connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Bar',
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Color(0xff09346B),
          accentColor: Color(0xFFFEF9EB)),
      home: WelcomeScreen(),
    );
  }
}
