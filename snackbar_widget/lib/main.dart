import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar Demo"),
        backgroundColor: Colors.amberAccent,
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Hola soy un snackbar"),
          duration: new Duration(seconds: 5),
          action: new SnackBarAction(
              label: "Click aqui",
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("Hola nuevamente")));
              }),
        ));
      },
      child: new Text("Desplegar"),
    );
  }
}
