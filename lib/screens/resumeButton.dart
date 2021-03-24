import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  final double width;
  final double height;
  final Widget mainChild;
  final Widget subOneChild;
  final Widget subTwoChild;
  final Color mainColor;
  final Color subOneColor;
  final Color subTwoColor;
  final Function btnOneOnpressed;
  final Function btnTwoOnpressed;
  final bool btnOneClickReverseSlider;
  final bool btnTwoClickReverseSlider;
  ConfirmButton(
      {@required this.width,
      @required this.height,
      this.mainChild,
      this.subOneChild,
      this.subTwoChild,
      this.mainColor = Colors.blue,
      this.subOneColor = Colors.green,
      this.subTwoColor = Colors.red,
      @required this.btnOneOnpressed,
      @required this.btnTwoOnpressed,
      this.btnOneClickReverseSlider = true,
      this.btnTwoClickReverseSlider = true});
  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    animationController.addListener(() {
      setState(() {});
    });

    animation = Tween<double>(begin: 0, end: widget.width).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutCubic));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.centerRight,
              child: new Row(
                children: <Widget>[
                  new MaterialButton(
                    elevation: 1,
                    height: widget.height,
                    minWidth: animation.value / 2.5,
                    child: widget.subOneChild,
                    color: widget.subOneColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      widget.btnOneOnpressed();
                      if (widget.btnOneClickReverseSlider)
                        animationController.reverse();
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  new MaterialButton(
                    elevation: 1,
                    height: widget.height,
                    minWidth: animation.value / 2.5,
                    child: widget.subTwoChild,
                    color: widget.subTwoColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      widget.btnTwoOnpressed();
                      if (widget.btnTwoClickReverseSlider)
                        animationController.reverse();
                    },
                  )
                ],
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: widget.height,
              width: widget.width - animation.value < 0
                  ? 0
                  : widget.width - animation.value,
              child: new RaisedButton(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: widget.mainChild,
                ),
                color: widget.mainColor,
                onPressed: () {
                  animationController.forward();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
