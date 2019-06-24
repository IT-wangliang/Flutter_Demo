import 'package:flutter/material.dart';

class RouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ButtonDemo(),
          //   ),
          // );
          Navigator.pushNamed(context, '/tab');
        },
      ),
    );
  }
}
