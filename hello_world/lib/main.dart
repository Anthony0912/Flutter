import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Mi primer aplicacion",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Mi primer aplicacion"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Hello world"),
        ),
      ),
    ),
  ));
}
