import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  static const String routeName = "/configuracion";
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Configuración"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Pantalla de configuración"),
        ),
      ),
    );
  }
}
