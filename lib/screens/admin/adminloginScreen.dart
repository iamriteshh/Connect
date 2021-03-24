import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'dashBoardAdmin.dart';

class LoginAdmin extends StatefulWidget {
  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginUser(),
    );
  }
}

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        color: Color(0xffFAFBFD),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/userLogin.PNG'),
              height: MediaQuery.of(context).size.height / 2.3,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 23, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Admin Login Connect !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Login To Experice Your World !',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: Column(
                        children: [
                          Material(
                              elevation: 20,
                              borderRadius: BorderRadius.circular(50),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 23, right: 23, top: 6, bottom: 6),
                                child: Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: ('Enter Your ID'),
                                      hintText: ('user@univ.edu.in'),
                                      hintStyle: TextStyle(
                                          fontSize: 14, color: Colors.blueGrey),
                                      labelStyle: TextStyle(fontSize: 18),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        size: 30,
                                        color: Color(0xfff4746BD),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.security,
                                        color: Colors.green,
                                        size: 21,
                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: Column(
                        children: [
                          Material(
                              elevation: 20,
                              borderRadius: BorderRadius.circular(50),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 23, right: 23, top: 6, bottom: 6),
                                child: Container(
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: ('Enter Passkey'),
                                      hintText: ('********'),
                                      hintStyle: TextStyle(
                                          fontSize: 14, color: Colors.blueGrey),
                                      labelStyle: TextStyle(fontSize: 18),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 30,
                                        color: Color(0xfff4746BD),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.security_outlined,
                                        color: Colors.green,
                                        size: 21,
                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SliderButton(
                action: () {
                  ///Do something here OnSlide
                  print('Ritesh Login');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (conext) {
                        return DashBoardAdmin();
                      },
                    ),
                  );
                },
                dismissible: false,

                ///Put label over here
                label: Text(
                  "Slide To Connect !",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                icon: Center(
                    child: Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                )),

                ///Change All the color and size from here.
                width: MediaQuery.of(context).size.width - 80,
                radius: 50,
                buttonColor: Color(0xfffd8c04),
                backgroundColor: Color(0xfff0f3057),
                highlightedColor: Colors.white,
                baseColor: Colors.white70,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 23,
                right: 23,
                bottom: 10,
              ),
              child: Container(
                child: Center(
                  child: Text(
                    'Developed By Team CodeX',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
