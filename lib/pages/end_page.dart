import 'package:flutter/material.dart';

class EndPage extends StatefulWidget {
  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  TextStyle style = TextStyle(
      color: Colors.black,
      fontSize: 40,
      letterSpacing: 2,
      fontWeight: FontWeight.bold);
  bool theEnd = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
              style: style,
              child: Text(
                '1. Wash your hands frequently.',
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
              style: style,
              child: Text(
                '2. Stay at home',
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
              style: style,
              child: Text(
                '3. Eat healthy food',
              ),
            ),
            FlatButton(
              child: Text(
                !theEnd
                    ? 'anything else..?'
                    : 'Social Distancing, Tha\'s right, thanks!',
                style: TextStyle(fontSize: 32),
              ),
              onPressed: () {
                setState(() {
                  style = TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      letterSpacing: 10,
                      fontWeight: FontWeight.w200);
                  theEnd = true;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
