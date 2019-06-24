import 'package:flutter/material.dart';
import 'drawerList.dart';
import 'hello.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Flutter_Demo'),
        elevation: 0.0, //阴影
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: Hello(),
      drawer: DrawerList(),
    );
  }
}
