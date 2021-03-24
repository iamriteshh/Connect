import 'package:flutter/material.dart';
import 'package:hack2021/screens/loginScreen.dart';
import 'admin/adminloginScreen.dart';

class LoginOption extends StatefulWidget {
  @override
  _LoginOptionState createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Option(),
    );
  }
}

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        color: Color(0xffFAFBFD),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/loginOp.png'),
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 23, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey , Welcome To Connect !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Select Your Parallel World !',
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (conext) {
                                    return Login();
                                  },
                                ),
                              );
                            },
                            child: Material(
                              elevation: 20,
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                height: 70,
                                width: MediaQuery.of(context).size.width - 50,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 12),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: LinearGradient(colors: [
                                                Color(0xff9D6FF6),
                                                Color(0xff6937DF)
                                              ])),
                                          child: Icon(
                                            Icons.speaker_group,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text(
                                          'Login As Student / Member',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.blueGrey,
                                          size: 18,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          )
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
                          GestureDetector(
                            onTap: () {
                              //To Do :
                            },
                            child: Material(
                              elevation: 20,
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                height: 70,
                                width: MediaQuery.of(context).size.width - 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(colors: [
                                              Color(0xffFCA36D),
                                              Color(0xffFD6A13)
                                            ])),
                                        child: Icon(
                                          Icons.admin_panel_settings,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        'Login As Admin / Faculty',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.blueGrey,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25,
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
