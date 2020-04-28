import 'package:covidstory/pages/start_page.dart';
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
      },
    );
  }
}
