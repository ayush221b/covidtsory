import 'package:covidstory/pages/efforts_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DestructionPage extends StatefulWidget {
  @override
  _DestructionPageState createState() => _DestructionPageState();
}

class _DestructionPageState extends State<DestructionPage> {
  int _counter = 1837989;

  TextStyle style =
      TextStyle(color: Colors.black, fontSize: 40, letterSpacing: 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Destruction Illustration'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () async {
              setState(() {
                _counter += 1;
              });
              setState(() {
                style = TextStyle(
                    color: Colors.black, fontSize: 60, letterSpacing: 10);
              });
              await Future.delayed(Duration(milliseconds: 150), () {
                setState(() {
                  style = TextStyle(
                      color: Colors.black, fontSize: 40, letterSpacing: 5);
                });
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: EffortsIntroPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeInSine,
          child: Text(
            '$_counter',
          ),
          style: style,
        ),
      ),
    );
  }
}
