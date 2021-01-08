import 'package:flutter/material.dart';
import 'package:drawer_widget/pages/home.dart';
import 'package:drawer_widget/pages/setting.dart';
import 'package:drawer_widget/pages/charging.dart';

void main() {
  runApp(new MaterialApp(home: Home(), routes: <String, WidgetBuilder>{
    Setting.routeName: (BuildContext context) => new Setting(),
    Charging.routeName: (BuildContext context) => new Charging()
  }));
}
