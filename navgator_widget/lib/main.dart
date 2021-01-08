import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: First(),
  ));
}

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Primera Pantalla")),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Second()));
          },
          child: new Text("Mostrar pantalla"),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Segunda pantalla"),
      ),
      body: new Center(
        child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("ir Atras")),
      ),
    );
  }
}
