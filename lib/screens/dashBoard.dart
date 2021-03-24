import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hack2021/screens/alumniConnect.dart';
import 'userScreen.dart';
import 'classroom.dart';
import 'noticeBoard.dart';
import 'latestNews/home.dart';
import 'chat/screens/home_screen.dart';

final List<String> kdemoImages = <String>[
  'postdemo.PNG',
  'postDemo1.png',
  'postDemo3.PNG',
  'postDemo4.PNG',
];
final List<String> kuserName = <String>[
  'SRM Updates',
  'Agrim Lab',
  'Chipset',
  'SRM Update',
];

final List<String> kuserDepartment = <String>[
  'Computer Science Department',
  'Mechanical Department',
  'Information Technology Department',
  'Electical & Electronics Department',
];
final List<String> klikeCount = <String>[
  '547',
  '792',
  '413',
  '609',
];
final List<String> kdislikeCount = <String>[
  '11',
  '95',
  '32',
  '69',
];

final List<int> colorCodes = <int>[600, 500, 100];

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (conext) {
                          return UserScreen();
                        },
                      ),
                    );
                  },
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (conext) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Chat\nMessage!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) {
                              return ClassRoom();
                            },
                          ),
                        );
                      },
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) {
                              return LatestNews();
                            },
                          ),
                        );
                      },
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) {
                              return NoticeBoard();
                            },
                          ),
                        );
                      },
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) {
                              return Alumni();
                            },
                          ),
                        );
                      },
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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: kdemoImages.length,
              itemBuilder: (BuildContext context, int index) {
                return funImage(
                  userName: kuserName[index],
                  userDepartment: kuserDepartment[index],
                  imagePath: kdemoImages[index],
                  disLikeCount: kdislikeCount[index],
                  likeCount: klikeCount[index],
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class funImage extends StatelessWidget {
  final String imagePath;
  final String userName;
  final String userDepartment;
  final String likeCount;
  final String disLikeCount;

  const funImage({
    Key key,
    @required this.imagePath,
    @required this.userName,
    @required this.userDepartment,
    @required this.likeCount,
    @required this.disLikeCount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        width: MediaQuery.of(context).size.width - 30,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user1.png'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        userName,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        userDepartment,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.library_add,
                      color: Colors.blueGrey,
                      size: 30,
                    )),
              ],
            ),
            SizedBox(
              height: 2,
              child: Container(
                color: Colors.black26,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.height - 100,
              height: 450,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image(
                  image: AssetImage('assets/images/' + imagePath),
                ),
              ),
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Icon(
                      Icons.open_in_browser,
                      color: Colors.pink,
                      size: 26,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Text('Open Link'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Icon(
                      Icons.share,
                      color: Colors.pink,
                      size: 26,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Text('Share Information'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
