import 'package:covidstory/pages/destruction_page.dart';
import 'package:covidstory/pages/doctors_page.dart';
import 'package:covidstory/pages/efforts_intro_page.dart';
import 'package:covidstory/pages/end_page.dart';
import 'package:covidstory/pages/frontline_one_page.dart';
import 'package:covidstory/pages/frontline_two_page.dart';
import 'package:covidstory/pages/message_page.dart';
import 'package:covidstory/pages/start_page.dart';
import 'package:covidstory/pages/threat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CovidStoryApp());
}

class CovidStoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid Story',
      theme: ThemeData(primaryColor: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/threat': (context) => ThreatPage(),
        '/destruction': (context) => DestructionPage(),
        '/efforts_intro': (context) => EffortsIntroPage(),
        '/frontline_one': (context) => FrontlineOnePage(),
        '/frontline_two': (context) => FrontlineTwoPage(),
        '/doctors': (context) => DoctorsPage(),
        '/message': (context) => MessagePage(),
        '/end': (context) => EndPage(),
      },
    );
  }
}
