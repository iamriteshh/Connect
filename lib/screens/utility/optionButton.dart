import 'package:flutter/material.dart';

class OptionBlock extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  final IconData icon;
  final String text;
  final double radius;
  final double height;
  final double width;
  final double iconSize;
  const OptionBlock({
    Key key,
    @required this.gradient1,
    @required this.gradient2,
    @required this.icon,
    @required this.text,
    @required this.radius,
    @required this.height,
    @required this.width,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              gradient1,
              gradient2,
              //Color(0xfff000000)
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Icon(
              icon,
              color: Colors.white,
              size: iconSize,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
