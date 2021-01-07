import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

enum DialogAction { yes, no }

class _MyDialogState extends State<MyDialog> {
  String _inputValue = "";
  void _alertResult(DialogAction action) {
    print("Tu seleccion es $action");
  }

  void _showAlert(String value) {
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: [
        new FlatButton(
            onPressed: () {
              _alertResult(DialogAction.yes);
            },
            child: new Text("Si")),
        new FlatButton(
            onPressed: () {
              _alertResult(DialogAction.no);
            },
            child: new Text("No"))
      ],
    );

    showDialog(context: context, child: dialog);
  }

  _onChanged(String value) {
    setState(() {
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Demo alert dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: [
              new TextField(
                decoration: new InputDecoration(hintText: "ingresar texto"),
                onChanged: (String value) {
                  _onChanged(value);
                },
              ),
              new RaisedButton(
                child: new Text("Ver alerta"),
                onPressed: () {
                  _showAlert(_inputValue);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
