import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '6月23日早，江宏杰和大家分享了一则关于女儿小小爱的短视频。江宏杰通过滤镜给自己的女儿加上了络腮胡子，把小小爱吓得不轻，一直在问：“这是什么？”最后还把手指头放进了嘴里，十分困惑的样子。但是尽管被画上了络腮胡，小小爱依旧是挡不住的可爱，一双大眼睛圆溜溜的，声音也是可爱的小奶音，萌翻众人。看到此景，网友们纷纷吐槽江宏杰“坑娃”：“这个爸爸有点坏！”江宏杰还回复道：“要一直玩。”也有调皮的网友和江宏杰一起“坑娃”：“以后有男孩子约我们小小爱，你就这样给小小爱打扮打扮，吓死那群臭小子”江宏杰认可地表示：“不错，听你的”。还有网友不忘妈妈福原爱：“现在都不@小爱了吗？”江宏杰的求生欲也是很强，立马回复到：“有的。”更多的网友都在夸小小爱的颜值：“好可爱的声音~”“萌萌哒，好可爱！”江宏杰也有回复，谢谢大家。',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// RichText
class WidgetDemoRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '1232',
          style: TextStyle(
            color: Colors.red,
            fontSize: 24.0,
          ),
          children: [
            TextSpan(
              text: 'App',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(
              text: '123232',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ]),
    );
  }
}

// Container
class WidgetDemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      padding: EdgeInsets.all(10.0),
      width: double.infinity, //强制撑满
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        // border: Border(
        //   top: BorderSide(
        //     color: Colors.blue,
        //     width: 3.0,
        //   ),
        // ),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20.0),
        // ),
      ),
      child: Text('sdssa'),
    );
  }
}

// Column
class WidgetDemoColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.settings, size: 40.0),
          Icon(Icons.cloud, size: 40.0),
          Icon(Icons.vibration, size: 40.0),
          Icon(Icons.archive, size: 40.0),
        ],
      ),
    );
  }
}

// Row
class WidgetDemoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.settings, size: 40.0),
          Icon(Icons.cloud, size: 40.0),
          Icon(Icons.vibration, size: 40.0),
          Icon(Icons.archive, size: 40.0),
        ],
      ),
    );
  }
}
