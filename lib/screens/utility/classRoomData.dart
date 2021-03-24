import 'package:flutter/material.dart';
import 'sizeConfig.dart';
import 'package:sliding_card/sliding_card.dart';
import 'ClassroomCard.dart';

class ClassroomData extends StatefulWidget {
  final String subjName;
  final String profName;
  final String due;
  final String email;
  final String phone;

  const ClassroomData({
    Key key,
    @required this.subjName,
    @required this.profName,
    @required this.due,
    @required this.email,
    @required this.phone,
  }) : super(key: key);

  @override
  _ClassroomDataState createState() => _ClassroomDataState();
}

class _ClassroomDataState extends State<ClassroomData> {
  SlidingCardController controller;
  @override
  void initState() {
    super.initState();
    controller = SlidingCardController();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: ClassroomCard(
        onCardTapped: () {
          print('Card tapped controller can be used here ');
          if (controller.isCardSeparated == true) {
            controller.collapseCard();
          } else {
            controller.expandCard();
          }
        },
        slidingCardController: controller,
        due: widget.due,
        email: widget.email,
        phone: widget.phone,
        profName: widget.profName,
        subjName: widget.subjName,
      ),
    );
  }
}
