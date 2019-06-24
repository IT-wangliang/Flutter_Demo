import 'package:flutter/material.dart';

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 图片
        Image.asset('images/pic.png'),
        // 标题
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '罗永浩再谈收购苹果：库克只是小股东 他插不上话罗永浩再谈收购苹果：库克只是小股东 他插不上话罗永浩再谈收购苹果：库克只是小股东 他插不上话罗永浩再谈收购苹果：库克只是小股东 他插不上话',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '2019-06-23 11:20',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('31')
            ],
          ),
        ),
        // 空盒子
        SizedBox(
          height: 10.0,
        ),
        // 按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            PubIcon(Icons.phone, '电话'),
            PubIcon(Icons.collections, '收藏'),
            PubIcon(Icons.share, '分享'),
          ],
        ),
        // 文章
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '6月19日，罗永浩开通了新的推特账号，并“放飞自我”地怼了称其为“太君”的网友。20日，罗永浩又连续回应了几条微博，在谈到“收购苹果”问题时，罗永浩表示如果能收购，iPhone和锤子两个品牌和产品将单独运作。',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class PubIcon extends StatelessWidget {
  final String text; // 定义传参类型
  final IconData icon;
  PubIcon(this.icon, this.text); //接收

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
