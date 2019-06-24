import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String username;
  String password;
  _login() {
    print(username);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.phone,
            onChanged: (val) {
              setState(() {
                username = val;
              });
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              hintText: '请输入手机号',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.phone,
            onChanged: (val) {
              setState(() {
                password = val;
              });
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.code,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              hintText: '请输入密码',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                _login();
              },
              child: Text(
                '登录',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
