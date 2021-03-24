import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class DashBoardAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashBoardAdminScreen(),
    );
  }
}

class DashBoardAdminScreen extends StatefulWidget {
  @override
  _DashBoardAdminScreenState createState() => _DashBoardAdminScreenState();
}

class _DashBoardAdminScreenState extends State<DashBoardAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [
                Color(0xfff07336D),
                Color(0xfff122F57),
                Color(0xfff000000)
              ]),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: AvatarGlow(
                      glowColor: Colors.white,
                      endRadius: 40.0,
                      duration: Duration(milliseconds: 800),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Image.asset(
                            'assets/images/user1.png',
                            height: 40,
                          ),
                          radius: 19.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Hey \nRitesh !',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Chat\nnMessage!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 4,
                    bottom: 15,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //#FD297A #9424F0
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfffFD297A),
                                  Color(0xfff9424F0),
                                  //Color(0xfff000000)
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Icon(
                                  Icons.notes,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Class\nRoom',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          //#FF9F4A #FF3C83
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfffFF9F4A),
                                  Color(0xfffFF3C83),
                                  //Color(0xfff000000)
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Icon(
                                  Icons.update,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Latest\nNews',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          //#538FFB #5B54FA
                          height: 120,
                          width: 120,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfff36D1DC),
                                  Color(0xfff5B54FA),
                                  //Color(0xfff000000)
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Notice\nBoard',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          //To DO : MOOC Link
                        },
                        child: Container(
                          //#cc2b5e #753a88
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfffd4fc79),
                                  Color(0xfff96e6a1),

                                  //Color(0xfff000000)
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Icon(
                                  Icons.upgrade,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'MOOC\nCourses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          //#FF9F4A #FF3C83
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfffFF9F4A),
                                  Color(0xfffFF3C83),
                                  //Color(0xfff000000)
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Icon(
                                  Icons.connect_without_contact,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Alumni\nConnect',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
