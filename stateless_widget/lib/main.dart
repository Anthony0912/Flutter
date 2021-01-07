import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    final TextStyle textStyle =
        new TextStyle(color: Colors.grey, fontSize: 30.0);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
      ),
      body: new Container(
        child: new Center(
            child: new Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //agarra todo el ancho de la pantalla
          children: [
            new MyCard(
              title: new Text(
                "I love flutter",
                style: textStyle,
              ),
              icon: new Icon(
                Icons.favorite,
                size: iconSize,
                color: Colors.redAccent,
              ),
            ),
            new MyCard(
              title: new Text("I like my video", style: textStyle),
              icon: new Icon(
                Icons.thumb_up,
                size: iconSize,
                color: Colors.blueAccent,
              ),
            ),
            new MyCard(
              title: new Text("Next video", style: textStyle),
              icon: new Icon(Icons.queue_play_next,
                  size: iconSize, color: Colors.brown),
            ),
          ],
        )),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: [this.title, this.icon],
        ),
      )),
    );
  }
}
