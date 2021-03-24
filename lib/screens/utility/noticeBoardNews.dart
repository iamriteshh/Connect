import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class CampusNews extends StatelessWidget {
  final String headline;
  final String text;
  const CampusNews({
    Key key,
    @required this.headline,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ExpansionTileCard(
        leading: CircleAvatar(child: Icon(Icons.email)),
        shadowColor: Colors.blueAccent,
        colorCurve: Curves.bounceIn,
        title: Text(
          headline,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        borderRadius: BorderRadius.circular(30),
        subtitle: Text('Campus News',
            style: TextStyle(color: Colors.white, fontSize: 12)),
        baseColor: Color(0xff133b5c),
        expandedColor: Color(0xff1e5f74),
        children: [
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
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
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Open Link',
                      style: TextStyle(color: Colors.white),
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
                    Icon(Icons.share, color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Share Update',
                      style: TextStyle(color: Colors.white),
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

class ClassRooNews extends StatelessWidget {
  final String headline;
  final String text;
  const ClassRooNews({
    Key key,
    @required this.headline,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ExpansionTileCard(
        leading: CircleAvatar(child: Icon(Icons.email)),
        shadowColor: Colors.blueAccent,
        colorCurve: Curves.bounceIn,
        title: Text(
          headline,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        borderRadius: BorderRadius.circular(30),
        subtitle: Text('Classroom News',
            style: TextStyle(color: Colors.white, fontSize: 12)),
        baseColor: Color(0xff133b5c),
        expandedColor: Color(0xff1e5f74),
        children: [
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
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
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Open Link',
                      style: TextStyle(color: Colors.white),
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
                    Icon(Icons.share, color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Share Update',
                      style: TextStyle(color: Colors.white),
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
