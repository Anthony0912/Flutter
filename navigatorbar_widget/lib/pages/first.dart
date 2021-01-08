import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            Icons.alarm,
            size: 170.0,
            color: Colors.blueAccent,
          ),
          new Text("Primer Tab")
        ],
      )),
    );
  }
}
