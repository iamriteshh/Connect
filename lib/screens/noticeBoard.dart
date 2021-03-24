import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'utility/noticeBoardNews.dart';
import 'data/noticeBoardData.dart';

MaskFilter _blur;
final List<MaskFilter> _blurs = [
  null,
  MaskFilter.blur(BlurStyle.normal, 10.0),
  MaskFilter.blur(BlurStyle.inner, 10.0),
  MaskFilter.blur(BlurStyle.outer, 10.0),
  MaskFilter.blur(BlurStyle.solid, 16.0),
];
int _blurIndex = 0;
MaskFilter _nextBlur() {
  if (_blurIndex == _blurs.length - 1) {
    _blurIndex = 0;
  } else {
    _blurIndex = _blurIndex + 1;
  }
  _blur = _blurs[_blurIndex];
  return _blurs[_blurIndex];
}

class NoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoticeBoardScreen(),
    );
  }
}

class NoticeBoardScreen extends StatefulWidget {
  @override
  _NoticeBoardScreenState createState() => _NoticeBoardScreenState();
}

class _NoticeBoardScreenState extends State<NoticeBoardScreen> {
  int knewsView = 1;

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
                Colors.white,
                Colors.white,
                Colors.white,
              ]),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  angle: 0,
                  alignment: Alignment.center,
                  child: WaveWidget(
                    config: CustomConfig(
                      gradientBegin: Alignment.topLeft,
                      gradientEnd: Alignment.topRight,
                      gradients: [
                        [Color(0xff4facfe), Color(0xff00f2fe)],
                        [Color(0xff4facfe), Color(0xff00f2fe)],
                        [Color(0xff4facfe), Color(0xff00f2fe)],
                      ],
                      durations: [32000, 21000, 12000],
                      heightPercentages: [1.45, 1.45, 5.25],
                      blur: _blur,
                    ),
                    size: Size(double.infinity, 46),
                    waveAmplitude: 25,
                  ),
                ),
                ClipPath(
                  clipper: DirectionalWaveClipper(
                      verticalPosition: VerticalPosition.BOTTOM),
                  child: Container(
                    height: 220,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          // end: Alignment.bottomCenter,
                          // begin: Alignment.topCenter,
                          colors: [
                            Color(0xff4facfe),
                            Color(0xff00f2fe),
                          ]),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Image(
                          width: 200,
                          height: 200,
                          image: Svg('assets/images/news.svg'),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fiber_new_outlined,
                              size: 160,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 65),
            Text(
              'Check All Recent Updates Here',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17.5,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(15),
              child: SlidingSwitch(
                value: false,
                width: MediaQuery.of(context).size.width / 1.1,
                onChanged: (bool value) {
                  if (value == true) {
                    setState(() {
                      knewsView = 2;
                    });
                  } else {
                    setState(() {
                      knewsView = 1;
                    });
                  }
                },
                height: 55,
                animationDuration: const Duration(milliseconds: 200),
                onTap: () {},
                onDoubleTap: () {},
                onSwipe: () {},
                textOff: "Campus News",
                textOn: "Class Updates",
                colorOn: Colors.green,
                colorOff: const Color(0xff6682c0),
                background: const Color(0xffe4e5eb),
                buttonColor: const Color(0xfff7f5f7),
                inactiveColor: const Color(0xff636f7b),
              ),
            ),
            if (knewsView == 1)
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: kCampusNews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CampusNews(
                      headline: kCampusNewsHeadline[index],
                      text: kCampusNews[index],
                    );
                  },
                ),
              ),
            if (knewsView == 2)
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: kClassRoomNewsHeadline.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ClassRooNews(
                        headline: kClassRoomNewsHeadline[index],
                        text: kClassRoomNews[index],
                      );
                    }),
              ),
          ],
        ),
      ),
    );
  }
}
