import 'package:flutter/material.dart';
import 'package:flutter_demo/pageDemo.dart';
import 'package:flutter_demo/drawerList.dart';
import 'package:flutter_demo/moreWidget.dart';
import 'package:flutter_demo/textField.dart';

class TabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Tab标签切换',
              style: TextStyle(fontSize: 16),
            ),
          ),
          elevation: 0.0, //阴影
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Icon(Icons.search),
          ],
          bottom: TabBar(
            labelColor: Colors.black, // label 文字颜色
            labelStyle: TextStyle(
              fontSize: 14.0,
            ),
            unselectedLabelColor: Colors.white, // 高亮颜色
            unselectedLabelStyle: TextStyle(
              fontSize: 14.0,
            ),
            indicatorColor: Colors.blue, // 高亮下划线颜色
            indicatorWeight: 2, // 高亮下划线宽度
            indicatorSize: TabBarIndicatorSize.tab, // 高亮下划线长度自适应
            tabs: <Widget>[
              Tab(text: 'Html'),
              Tab(text: 'Css'),
              Tab(text: 'JavaScript'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PageDemo(),
            MoreWidget(),
            InputWidget(),
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }
}
