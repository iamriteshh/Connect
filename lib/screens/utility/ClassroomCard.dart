import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'ClassroomBackCard.dart';
import 'ClassroomFrontCard.dart';
import 'sizeConfig.dart';

///This is the main Appointment card
///it regroups the AppointmentFrontCard
///and AppointmentBacktCard together
///using my dart package ''SlidingCard''
class ClassroomCard extends StatefulWidget {
  final String subjName;
  final String profName;
  final String due;
  final String email;
  final String phone;
  const ClassroomCard(
      {Key key,
      this.slidingCardController,
      @required this.onCardTapped,
      @required this.subjName,
      @required this.profName,
      @required this.due,
      @required this.email,
      @required this.phone})
      : super(key: key);

  final SlidingCardController slidingCardController;
  final Function onCardTapped;

  @override
  _AppointmentCardState createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<ClassroomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Well the card was tapped');
        widget.onCardTapped();
      },
      child: SlidingCard(
        slimeCardElevation: 0.5,
        // slidingAnimationReverseCurve: Curves.bounceInOut,
        cardsGap: SizeConfig.safeBlockVertical,
        controller: widget.slidingCardController,
        slidingCardWidth: SizeConfig.horizontalBloc * 90,
        visibleCardHeight: SizeConfig.safeBlockVertical * 27,
        hiddenCardHeight: SizeConfig.safeBlockVertical * 15,
        frontCardWidget: ClassroomFrontCard(
          onInfoTapped: () {
            print('info pressed');
            widget.slidingCardController.expandCard();
          },
          onDecline: () {
            print('Declined');
          },
          onAccep: () {
            print('Accepted');
          },
          onRedCloseButtonTapped: () {
            widget.slidingCardController.collapseCard();
          },
          due: widget.due,
          profName: widget.profName,
          subjName: widget.subjName,
        ),
        backCardWidget: ClassRoomBackCard(
          onPhoneTapped: () {
            print('Phone tapped');
          },
          contactInformationEmail: widget.email,
          contactInformationPhone: widget.phone,
        ),
      ),
    );
  }
}
