import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  build(BuildContext context) {
    return Center(
      child: Text(
        'hello word',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
