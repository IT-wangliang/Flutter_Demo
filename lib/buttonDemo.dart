import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  // 组件抽取
  Widget floatButton(context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_back),
      elevation: 0,
      backgroundColor: Colors.orange,
      onPressed: () {
        print('按下浮动按钮');
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('文字按钮'),
              textColor: Colors.red,
              onPressed: () {
                print('点击了按钮1');
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('图标文字'),
              textColor: Colors.blue,
              onPressed: () {
                print('点击了按钮2');
              },
            ),
            RaisedButton(
              onPressed: () {
                print('点击了按钮3');
              },
              elevation: 0,
              child: Text('效果按钮', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
            ),
            RaisedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('带图标的效果按钮', style: TextStyle(color: Colors.white)),
              elevation: 0,
              color: Colors.blue,
              splashColor: Colors.red,
              onPressed: () {
                print('点击了按钮4');
              },
            ),
            OutlineButton(
              splashColor: Colors.red,
              child: Text('边框按钮'),
              textColor: Colors.blue,
              borderSide: BorderSide(color: Colors.black),
              onPressed: () {
                print('点击了按钮5');
              },
            ),
            OutlineButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('带图标的边框按钮'),
              splashColor: Colors.red,
              textColor: Colors.blue,
              borderSide: BorderSide(color: Colors.black),
              onPressed: () {
                print('点击了按钮6');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: floatButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
