import 'package:covidstory/pages/destruction_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ThreatPage extends StatefulWidget {
  @override
  _ThreatPageState createState() => _ThreatPageState();
}

class _ThreatPageState extends State<ThreatPage> {
  TextStyle style1 =
      TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold);
  TextStyle style2 = TextStyle(
      color: Colors.red.shade400,
      fontSize: 40,
      fontWeight: FontWeight.normal,
      letterSpacing: 5);

  double _opacity = 0.0;

  @override
  void initState() {
    triggerAnimations();
    super.initState();
  }

  triggerAnimations() async {
    await Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
      });
    });
    await Future.delayed(Duration(seconds: 6), () {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: DestructionPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 400),
              curve: Curves.linearToEaseOut,
              child: Text(
                'The Threat',
                style: style1,
              ),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 2000),
              curve: Curves.easeIn,
              child: Text(
                'is as REAL as it gets.',
                style: style2,
              ),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 3000),
              curve: Curves.easeIn,
              child: Text(
                'The world is at war',
                style: style1,
              ),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 4000),
              curve: Curves.easeIn,
              child: Text(
                'with an unknown enemy',
                style: style2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
