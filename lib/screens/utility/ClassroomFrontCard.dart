import 'package:flutter/material.dart';
import 'sizeConfig.dart';

class ClassroomFrontCard extends StatefulWidget {
  final String subjName;
  final String profName;
  final String due;
  final onRedCloseButtonTapped;
  final onInfoTapped;
  final onAccep;
  final onDecline;
  const ClassroomFrontCard({
    Key key,
    @required this.subjName,
    @required this.profName,
    @required this.due,
    @required this.onRedCloseButtonTapped,
    @required this.onInfoTapped,
    @required this.onAccep,
    @required this.onDecline,
  }) : super(key: key);
  @override
  _ClassroomFrontCardState createState() => _ClassroomFrontCardState();
}

class _ClassroomFrontCardState extends State<ClassroomFrontCard> {
  bool isinfoPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff2C8BFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            widget.subjName,
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white70,
                            size: SizeConfig.safeBlockHorizontal * 7,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.face,
                          size: SizeConfig.safeBlockHorizontal * 5,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.profName,
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 4.7,
                              color: Colors.white70),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 150.0 * 90,
                      //color: Colors.pink,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: SizeConfig.safeBlockHorizontal * 15,
                              height: SizeConfig.safeBlockVertical * 8,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clasroom.jpg')),
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Assignment Pending',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4.7,
                                      color: Colors.black87),
                                ),
                                Text(
                                  widget.due,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4.7,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: GestureDetector(
                              onTap: () {
                                if (isinfoPressed == true) {
                                  isinfoPressed = false;
                                  widget.onRedCloseButtonTapped();
                                  setState(() {});
                                } else {
                                  isinfoPressed = true;
                                  widget.onInfoTapped();
                                  setState(() {});
                                }
                              },
                              child: Container(
                                //color: Colors.red,
                                child: isinfoPressed
                                    ? Transform.rotate(
                                        angle: 0.7777,
                                        child: Icon(
                                          Icons.add_circle,
                                          size: SizeConfig.safeBlockHorizontal *
                                              9,
                                          color: Colors.redAccent,
                                        ),
                                      )
                                    : Icon(
                                        Icons.info,
                                        size:
                                            SizeConfig.safeBlockHorizontal * 9,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        width: 150.0 * 90,
                        //color: Colors.indigo,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                height: SizeConfig.safeBlockVertical * 6,
                                child: RaisedButton(
                                  disabledElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  hoverElevation: 0,
                                  elevation: 0.5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textColor: Colors.white,
                                  color: Colors.blue,
                                  child: Text(
                                    'Classroom Link',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  onPressed: widget.onAccep,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: SizeConfig.safeBlockVertical * 6,
                                child: RaisedButton(
                                  disabledElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  hoverElevation: 0,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textColor: Colors.black26,
                                  color: Color(0xffEBEFFB),
                                  child: Text(
                                    'Notes',
                                    style: TextStyle(
                                      color: Color(0xff878FA6),
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                    ),
                                  ),
                                  onPressed: widget.onDecline,
                                ),
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
        )
      ],
    );
  }
}
