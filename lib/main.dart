import 'package:flutter/material.dart';
import 'package:flutter_demo/route.dart';
import 'package:flutter_demo/tab.dart';
import 'package:flutter_demo/buttonDemo.dart';
import 'package:flutter_demo/home.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      // home: TabDemo(),
      // home: ButtonDemo(),
      // home: RouteDemo(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => RouteDemo(),
        '/home': (context) => Home(),
        '/tab': (context) => TabDemo(),
        '/button': (context) => ButtonDemo(),
      }, // debug 右上角标记
    );
  }
}
