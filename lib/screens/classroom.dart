import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'utility/optionButton.dart';
import 'utility/classRoomData.dart';
import 'data/classRoomData.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ClassRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClassRoomScreen(),
    );
  }
}

class ClassRoomScreen extends StatefulWidget {
  @override
  _ClassRoomScreenState createState() => _ClassRoomScreenState();
}

class _ClassRoomScreenState extends State<ClassRoomScreen> {
  int kDisplayView = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xfff07336D),
              Color(0xfff122F57),
              Color(0xfff000000),
            ]),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 5),
                child: AvatarGlow(
                  glowColor: Colors.white,
                  endRadius: 70,
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
                        height: 120,
                      ),
                      radius: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hey, Ritesh Singh',
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Weclome To Your Study Room',
                      style: TextStyle(
                          fontSize: 11.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'SRM Institute Of Science & Technology',
                      style: TextStyle(
                          fontSize: 11.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'RA1811003020013 CSE 3A',
                      style: TextStyle(
                          fontSize: 11.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MaterialButton(
                      elevation: 50,
                      onPressed: () {
                        //To Do: Support Link
                      },
                      child: OptionBlock(
                        icon: Icons.support,
                        text: 'Support',
                        gradient2: Color(0xfff36D1DC),
                        gradient1: Color(0xfff5B54FA),
                        height: 65,
                        radius: 25,
                        width: 65,
                        iconSize: 25,
                      ),
                    ),
                    MaterialButton(
                      elevation: 50,
                      onPressed: () {
                        //To Do Redirect To Fee Kart
                      },
                      child: OptionBlock(
                        icon: Icons.monetization_on,
                        text: 'Fee Kart',
                        gradient2: Color(0xfffFF9F4A),
                        gradient1: Color(0xfffFF3C83),
                        height: 65,
                        radius: 25,
                        width: 65,
                        iconSize: 25,
                      ),
                    ),
                    MaterialButton(
                      elevation: 50,
                      onPressed: () {
                        setState(() {
                          kDisplayView = 2;
                        });
                      },
                      child: OptionBlock(
                        icon: Icons.receipt,
                        text: 'Receipts',
                        gradient2: Color(0xfffFD297A),
                        gradient1: Color(0xfff9424F0),
                        height: 65,
                        radius: 25,
                        width: 65,
                        iconSize: 25,
                      ),
                    ),
                    MaterialButton(
                      elevation: 50,
                      onPressed: () {
                        setState(() {
                          kDisplayView = 1;
                        });
                      },
                      child: OptionBlock(
                        icon: Icons.class__rounded,
                        text: 'Classes',
                        gradient2: Color(0xfffd4fc79),
                        gradient1: Color(0xfff96e6a1),
                        height: 65,
                        radius: 25,
                        width: 65,
                        iconSize: 25,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          if (kDisplayView == 1)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: subjecName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: Alignment.center,
                    child: ClassroomData(
                      due: dueRecord[index],
                      email: profEmail[index],
                      phone: profContact[index],
                      profName: profName[index],
                      subjName: subjecName[index],
                    ),
                  );
                },
              ),
            ),
          if (kDisplayView == 2)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(2),
                itemCount: feeReceiptDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return FeeReciept(
                    amount: feeRecieptAmount[index],
                    date: feeRecieptDate[index],
                    details: feeReceiptDetails[index],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class FeeReciept extends StatelessWidget {
  final String date;
  final String amount;
  final String details;

  const FeeReciept({
    Key key,
    @required this.date,
    @required this.amount,
    @required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14, left: 8, right: 8, bottom: 8),
      child: ExpansionTileCard(
        leading: CircleAvatar(child: Icon(Icons.receipt_long)),
        shadowColor: Colors.blueAccent,
        colorCurve: Curves.bounceIn,
        title: Text(
          date,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        borderRadius: BorderRadius.circular(30),
        subtitle:
            Text(amount, style: TextStyle(color: Colors.black, fontSize: 12)),
        baseColor: Color(0xfff6f5f5),
        expandedColor: Color(0xffd3e0ea),
        children: [
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 8),
            child: Text(
              details,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            buttonHeight: 52.0,
            buttonMinWidth: 90.0,
            children: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                onPressed: () {
                  //cardB.currentState?.expand();
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.blueGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Download Receipt',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                onPressed: () {
                  //cardB.currentState?.collapse();
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.blueGrey),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Share Reciept',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
