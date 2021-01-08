import 'package:flutter/material.dart';
import 'package:navigatorbar_widget/pages/first.dart';
import 'package:navigatorbar_widget/pages/second.dart';
import 'package:navigatorbar_widget/pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: MyNavigator(),
  ));
}

class MyNavigator extends StatefulWidget {
  MyNavigator({Key key}) : super(key: key);

  @override
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Demo botton navigatior bar"),
        backgroundColor: Colors.black,
      ),
      body: new TabBarView(
        children: [new First(), new Second(), new Third()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.black,
        child: new TabBar(tabs: [
          new Tab(
            icon: new Icon(Icons.alarm),
          ),
          new Tab(
            icon: new Icon(Icons.watch_later),
          ),
          new Tab(
            icon: new Icon(Icons.airplanemode_active),
          ),
        ], controller: controller),
      ),
    );
  }
}
