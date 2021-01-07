import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: _MyTextField(),
  ));
}

class _MyTextField extends StatefulWidget {
  @override
  __MyTextFieldState createState() => __MyTextFieldState();
}

class __MyTextFieldState extends State<_MyTextField> {
  String inputValue = "";
  final TextEditingController controller = new TextEditingController();
  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Edit text widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Container(
          child: new Column(
            children: [
              new TextField(
                decoration:
                    new InputDecoration(hintText: "ingrese un texto aquí"),
                onSubmitted: (String value) {
                  onSubmitted(value);
                },
                maxLength: 2,
                controller: controller,
              ),
              new Text(inputValue),
            ],
          ),
        ),
      ),
    );
  }
}
