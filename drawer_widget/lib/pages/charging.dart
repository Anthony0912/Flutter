import 'package:flutter/material.dart';

class Charging extends StatefulWidget {
  static const String routeName = "/bateria";
  @override
  _ChargingState createState() => _ChargingState();
}

class _ChargingState extends State<Charging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Bateria"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Pantalla para la bateria"),
        ),
      ),
    );
  }
}
