import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.only(
              top: 0.0,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'MyApp',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('个人中心'),
            leading: Icon(Icons.supervised_user_circle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('群组'),
            leading: Icon(Icons.group),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('设置'),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
