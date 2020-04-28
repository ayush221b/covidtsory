import 'package:covidstory/pages/end_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

class EffortsIntroPage extends StatefulWidget {
  @override
  _EffortsIntroPageState createState() => _EffortsIntroPageState();
}

class _EffortsIntroPageState extends State<EffortsIntroPage> {
  double topPadding = 400;

  @override
  void initState() {
    trigger();
    super.initState();
  }

  trigger() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        topPadding = 20;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'But all hope is not lost.'.toUpperCase(),
                style: TextStyle(
                    color: Colors.black, fontSize: 32, letterSpacing: 2),
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              padding: EdgeInsets.only(top: topPadding),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            'assets/svg/doctors.svg',
                            height: 150,
                          ))),
                  Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image.asset(
                            'assets/png/policeman.png',
                            height: 150,
                          ))),
                  Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image.asset(
                            'assets/png/sanitizer.png',
                            height: 150,
                          ))),
                  Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            'assets/svg/remote.svg',
                            height: 150,
                          ))),
                ],
              ),
            ),
            Container(
              child: Center(
                  child: FlatButton(
                child: Text('How do I stay safe?'),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: EndPage(), type: PageTransitionType.fade));
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
