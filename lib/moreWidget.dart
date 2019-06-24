import 'package:flutter/material.dart';

class MoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 固定宽高比例组件
        AspectRatio(
          aspectRatio: 2 / 1,
          child: Container(
            color: Colors.blue,
            child: Text('固定宽高比例'),
          ),
        ),
        // AspectRatio(
        //   aspectRatio: 4 / 3,
        //   child: Image.asset(
        //     'images/pic.png',
        //     fit: BoxFit.contain,
        //   ),
        // ),
        SizedBox(
          height: 5,
        ),
        Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 200.0,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
            Positioned(
              top: 50,
              left: 10,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
          ],
        ),
        Divider(color: Colors.red),
        ListTile(
          title: Text('个人主页'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('点击个人主页');
          },
        ),
        Divider(color: Colors.red),
        ListTile(
          title: Text('个人主页'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('点击个人主页');
          },
        ),
        Divider(color: Colors.red),
        ListTile(
          title: Text('个人主页'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('点击个人主页');
          },
        ),
        Divider(color: Colors.red),
        Chip(
          label: Text('data'),
          backgroundColor: Colors.red,
          labelStyle: TextStyle(color: Colors.white),
          avatar: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text('E'),
          ),
          onDeleted: () {
            print('点击删除');
          },
        )
      ],
    );
  }
}
