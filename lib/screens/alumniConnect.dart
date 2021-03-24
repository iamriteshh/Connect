import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hack2021/screens/userScreen.dart';
import 'package:slimy_card/slimy_card.dart';
import 'chat/screens/home_screen.dart';

List<String> kcompnayNameProduct = [
  'Microsoft',
  'Amazon',
  'Flipkart',
  'Nutanix',
  'Paypal',
  'LinkedIN',
  'Google',
];
List<String> kAlumniNameProduct = [
  'Aditya Pandey',
  'Rishabh Ostwal',
  'Akshat Sharma',
  'Ankita Sharma',
  'Vedant Tandon',
  'Chaitanya Singh',
  'Ritesh Singh',
];

List<String> kAlumniNameProductDesc = [
  'SDE-I',
  'SDE-II',
  'Program Manager',
  'QTE',
  'SDE',
  'Senior SDE',
  'Analyst',
];

List<String> kAlumniNameHigherStudies = [
  'Ankit Shaw',
  'Shubham Kumar',
  'Samit Krishna',
  'Abhinavan Roy',
  'Prateek Singh',
  'Bhushan Patil',
  'Ritika Singh',
];

List<String> kAlumniNameHigherCollge = [
  'UC, Berkely',
  'IIT Bombay',
  'M.I.T',
  'IIM , Banglore',
  'UT, Dallas',
  'IIT , Kanpur',
  'IIM , Ahemdabad',
];

List<String> kAlumniNameHiherDesc = [
  'M.S',
  'PHD',
  'M.S',
  'MBA',
  'MBA',
  'M.TECH',
  'MBA',
];

List<String> kAlumniNameOther = [
  'Arunish Shekhar',
  'Shubham Nandi',
  'Krishnanad',
  'Renee Robert'
];

List<String> kAlumniOtherCompName = [
  'Junyper Networks',
  'Cisco',
  'Oracle',
  'Byjus',
];

List<String> kAlumniOtherDesc = [
  'Analyst',
  'Business Head',
  'Manager',
  'SDE',
];

class Alumni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlumniScreen(),
    );
  }
}

class AlumniScreen extends StatefulWidget {
  @override
  _AlumniScreenState createState() => _AlumniScreenState();
}

class _AlumniScreenState extends State<AlumniScreen> {
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
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
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
                    child: GestureDetector(
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
                        'Chat\nMessage',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Alumni In Product Based Company',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  AlumniView(
                    compName: kcompnayNameProduct,
                    desc: kAlumniNameProductDesc,
                    name: kAlumniNameProduct,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45, left: 15, right: 15),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Alumni Doing Higher Studies',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  AlumniView(
                    compName: kAlumniNameHigherCollge,
                    desc: kAlumniNameHiherDesc,
                    name: kAlumniNameHigherStudies,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45, left: 15, right: 15),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Other Top Alumni',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  AlumniView(
                    compName: kAlumniOtherCompName,
                    desc: kAlumniOtherDesc,
                    name: kAlumniNameOther,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlumniView extends StatelessWidget {
  final List<String> compName;
  final List<String> name;
  final List<String> desc;
  const AlumniView({
    Key key,
    @required this.compName,
    @required this.name,
    @required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      height: 450,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(8),
                              itemCount: compName.length,
                              itemBuilder: (BuildContext context, int index) {
                                return AlumniInformation(
                                  companyName: compName[index],
                                  name: name[index],
                                  desc: desc[index],
                                );
                              },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}

class AlumniInformation extends StatelessWidget {
  final String name;
  final String companyName;
  final String desc;

  const AlumniInformation({
    Key key,
    @required this.name,
    @required this.companyName,
    @required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  companyName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SlimyCard(
              color: Colors.white12,
              width: 220,
              topCardHeight: 180,
              bottomCardHeight: 100,
              borderRadius: 15,
              topCardWidget: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/user1.png',
                        height: 60,
                      ),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              bottomCardWidget: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      desc,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            //To Do:
                          },
                          child: Image(
                            image: AssetImage('assets/images/linkedIN.png'),
                            width: 25,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        GestureDetector(
                          onTap: () {
                            //To Do:
                          },
                          child: Image(
                            image: AssetImage('assets/images/facebook.png'),
                            width: 25,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        GestureDetector(
                          onTap: () {
                            //To Do:
                          },
                          child: Image(
                            image: AssetImage('assets/images/instagram.png'),
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              slimeEnabled: true,
            ),
          ],
        ));
  }
}
