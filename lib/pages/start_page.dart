import 'package:covidstory/pages/threat_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextStyle _textStyle = TextStyle(
      fontWeight: FontWeight.normal,
      letterSpacing: 1,
      color: Colors.black,
      fontSize: 24);
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Covid 19: A Flutter Story',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 36),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(40),
                    child: Text(
                      'Even these letters follow social distancing, why can\'t you?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: AnimatedDefaultTextStyle(
                duration: Duration(seconds: 2),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Text('These are very special times, indeed.'),
                style: _textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FlatButton(
                  child: Text('Begin Story'),
                  onPressed: () async {
                    // Implmenet on pressed
                    // Start the text animation and chnge opacity of button
                    setState(() {
                      _textStyle = TextStyle(
                          fontSize: 40,
                          letterSpacing: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w100);
                      _opacity = 0.0;
                    });
                    await Future.delayed(Duration(milliseconds: 1500), () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: ThreatPage(),
                              type: PageTransitionType.fade));
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
