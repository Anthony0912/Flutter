import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            Icons.airplanemode_active,
            size: 170.0,
            color: Colors.blueAccent,
          ),
          new Text("Tercero Tab")
        ],
      )),
    );
  }
}
