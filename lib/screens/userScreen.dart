import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:fl_chart/fl_chart.dart';
import 'resumeButton.dart';
import 'data/userScreenData.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: userDashBoard(),
    );
  }
}

class userDashBoard extends StatefulWidget {
  @override
  _userDashBoardState createState() => _userDashBoardState();
}

class _userDashBoardState extends State<userDashBoard> {
  int kinitialDisplay = 1; // 1-> CPI Perfromanc  2-> Attendance 3-> Grades
  Color footerButtonOffColor = Colors.white;
  Color footerButtonOnColor = Colors.yellowAccent;
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
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarGlow(
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
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Ritesh Singh',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Department Of Computer Science',
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/images/github.png'),
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Image(
                                image: AssetImage('assets/images/linkedIN.png'),
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Image(
                                image:
                                    AssetImage('assets/images/instagram.png'),
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Image(
                                image: AssetImage('assets/images/facebook.png'),
                                width: 25,
                                height: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2,
                child: Container(
                  color: Colors.white24,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OptionBlock(
                                icon: Icons.link,
                                text: '264',
                                gradient2: Color(0xfffFD297A),
                                gradient1: Color(0xfff9424F0),
                                height: 60,
                                radius: 25,
                                width: 60,
                                iconSize: 25,
                              ),
                              SizedBox(
                                width: 27,
                              ),
                              OptionBlock(
                                icon: Icons.add_link,
                                text: '123',
                                gradient2: Color(0xfffFF9F4A),
                                gradient1: Color(0xfffFF3C83),
                                height: 60,
                                radius: 25,
                                width: 60,
                                iconSize: 25,
                              ),
                              SizedBox(
                                width: 27,
                              ),
                              OptionBlock(
                                icon: Icons.post_add,
                                text: '12',
                                gradient2: Color(0xfff36D1DC),
                                gradient1: Color(0xfff5B54FA),
                                height: 60,
                                radius: 25,
                                width: 60,
                                iconSize: 25,
                              ),
                              SizedBox(
                                width: 27,
                              ),
                              OptionBlock(
                                icon: Icons.star,
                                text: '3',
                                gradient2: Color(0xfffd4fc79),
                                gradient1: Color(0xfff96e6a1),
                                height: 60,
                                radius: 25,
                                width: 60,
                                iconSize: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 2,
                child: Container(
                  color: Colors.white24,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConfirmButton(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 55,
                      btnOneClickReverseSlider: false,
                      btnTwoClickReverseSlider: true,
                      btnOneOnpressed: () {
                        print('Button one clicked');
                      },
                      btnTwoOnpressed: () {
                        print('Button two clicked');
                      },
                      mainColor: Color(0XFFe4e978),
                      mainChild: new Row(
                        children: <Widget>[
                          new Text(
                            'Tap To  Review Your Resume',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      subOneColor: Color(0XFFFFe4e978),
                      subOneChild: new Row(
                        children: <Widget>[
                          new Icon(
                            Icons.grid_view,
                          ),
                          new Text(' View Resume')
                        ],
                      ),
                      subTwoColor: Color(0XFFe94560),
                      subTwoChild: new Row(
                        children: <Widget>[
                          new Icon(Icons.upload_file),
                          new Text(' Upload New')
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          getHudText(kinitialDisplay),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      if (kinitialDisplay == 1) CtPerformance(),
                      if (kinitialDisplay == 2) GetAttendance(),
                      if (kinitialDisplay == 3) GetGrades(),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        //To Do: Attendance View
                        setState(() {
                          kinitialDisplay = 2;
                        });
                      },
                      elevation: 25,
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: kinitialDisplay == 2
                                ? footerButtonOnColor
                                : footerButtonOffColor,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Attendance',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        //To Do: CPI Performance
                        setState(() {
                          kinitialDisplay = 1;
                        });
                      },
                      elevation: 25,
                      child: Column(
                        children: [
                          Icon(
                            Icons.analytics,
                            color: kinitialDisplay == 1
                                ? footerButtonOnColor
                                : footerButtonOffColor,
                            size: 30,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'CPI Performance',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          kinitialDisplay = 3;
                        });
                      },
                      elevation: 50,
                      child: Column(
                        children: [
                          Icon(
                            Icons.score,
                            color: kinitialDisplay == 3
                                ? footerButtonOnColor
                                : footerButtonOffColor,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Grades',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        //To Do: GPA Calculator'
                      },
                      elevation: 25,
                      child: Column(
                        children: [
                          Icon(
                            Icons.calculate_rounded,
                            color: footerButtonOffColor,
                            size: 30,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'GPA Calculator',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        //To Do: Apply OD
                      },
                      elevation: 25,
                      child: Column(
                        children: [
                          Icon(
                            Icons.score,
                            color: footerButtonOffColor,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Apply For OD',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetAttendance extends StatelessWidget {
  const GetAttendance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Subject Name',
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'Total Hours',
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'Present Hours',
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'Absent Count',
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'Total Percentage',
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
          ),
        ],
        rows: List.generate(
          ksubjectList.length,
          (index) => getdataRowAttendacne(index),
        ),
      ),
    );
  }
}

DataRow getdataRowAttendacne(int index) {
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(
        ksubjectList[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        ktotalHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        kpresentHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        kabsentHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(
        Text(
          kpresentHour[index] + ' %',
          style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
        ),
      ),
    ],
  );
}

class GetGrades extends StatelessWidget {
  const GetGrades({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CTinformation(
                text: 'Perfromance Of CLA1 Theory',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA1 Practical',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA2 Theory',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA2 Practical',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA3 Theory',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA13 Practical',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA-4 Theory',
              ),
              CT1(),
              CTinformation(
                text: 'Perfromance Of CLA-4 Practical',
              ),
              CT1(),
              CTinformation(
                text: '\nCumilative Report Of Internal\n\n',
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CumilativeReport(
                  backGroundColor: Colors.amber,
                  percent: 0.9,
                  subjectName: '18MAB101T',
                  progressColor: Colors.lightGreen[600],
                  totalScore: '48.9',
                ),
                SizedBox(
                  width: 25,
                ),
                CumilativeReport(
                  backGroundColor: Colors.amber,
                  percent: 0.8,
                  subjectName: '18CSS202J',
                  progressColor: Colors.blueAccent,
                  totalScore: '41.9',
                ),
                SizedBox(
                  width: 25,
                ),
                CumilativeReport(
                  backGroundColor: Colors.amber,
                  percent: 0.5,
                  subjectName: '18CSS201J',
                  progressColor: Colors.deepOrange,
                  totalScore: '45.9',
                ),
                SizedBox(
                  width: 25,
                ),
                CumilativeReport(
                  backGroundColor: Colors.amber,
                  percent: 0.9,
                  subjectName: '18CSS203J',
                  progressColor: Colors.lightGreen[600],
                  totalScore: '48.9',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CumilativeReport extends StatelessWidget {
  final String subjectName;
  final String totalScore;
  final double percent;
  final Color progressColor;
  final Color backGroundColor;

  const CumilativeReport({
    Key key,
    @required this.subjectName,
    @required this.percent,
    @required this.progressColor,
    @required this.backGroundColor,
    @required this.totalScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120.0,
      lineWidth: 8.0,
      animationDuration: 1200,
      percent: percent,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            subjectName,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Text(
            totalScore,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      progressColor: progressColor,
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: backGroundColor,
    );
  }
}

class CTinformation extends StatelessWidget {
  final String text;
  const CTinformation({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 4,
        top: 10,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class CT1 extends StatelessWidget {
  const CT1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Subject Name',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Total Score',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Your Score',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Grade',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
      ],
      rows: List.generate(
        ksubjectList.length,
        (index) => getdataRowGrades(index),
      ),
    );
  }
}

DataRow getdataRowGrades(int index) {
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(
        ksubjectList[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        ktotalHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        kpresentHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
      DataCell(Text(
        kabsentHour[index],
        style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
      )),
    ],
  );
}

class CtPerformance extends StatelessWidget {
  const CtPerformance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTextStyles: (value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 6:
                    return 'Semester Wise Performance x 2';
                }
                return '';
              },
              margin: 10,
            ),
            leftTitles: SideTitles(
              showTitles: true,
              getTextStyles: (value) => const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 1:
                    return '> 6.00';
                  case 2:
                    return '> 7.00';
                  case 3:
                    return '> 8.00';
                  case 4:
                    return '> 9.00';
                  case 5:
                    return '= 10.0';
                }
                return '';
              },
              reservedSize: 28,
              margin: 19,
            ),
          ),
          borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 2)),
          minX: 0,
          maxX: 14,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 4.2),
                FlSpot(2.0, 4.5),
                FlSpot(4.0, 3.9),
                FlSpot(6.0, 4.2),
                FlSpot(8.0, 4.8),
                FlSpot(10.0, 3.3),
                FlSpot(12.0, 4.7),
                FlSpot(14.0, 4.9),
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                      Icons.thumb_up,
                      color: Colors.pink,
                      size: 26,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Icon(
                      Icons.thumb_down,
                      color: Colors.pink,
                      size: 26,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Text('Liked By - ' + likeCount),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 2),
                    child: Text('Disliked By - ' + disLikeCount),
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

String getHudText(int displayIndex) {
  if (displayIndex == 1) return 'CPI Performance Report (Semester Wise)';
  if (displayIndex == 2) return 'Attendance Of Current Semester';
  if (displayIndex == 3) return 'Grade List Of Current Semester';
}
