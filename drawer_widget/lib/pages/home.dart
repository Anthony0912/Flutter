import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(child: new Text("Ajustes"));
    var info = new AboutListTile(
      child: new Text("Información App"),
      applicationIcon: new Icon(Icons.favorite),
      icon: new Icon(Icons.info),
      applicationVersion: "v1.0.0",
      applicationName: "Demo Drawer",
    );
    ListTile _getItem(Icon icon, String title, String router) {
      return new ListTile(
        leading: icon,
        title: new Text(title),
        onTap: (() {
          setState(() {
            Navigator.of(context).pushNamed(router);
          });
        }),
      );
    }

    ListView listView = new ListView(
      children: [
        header,
        _getItem(new Icon(Icons.settings), "Configuración", "/configuracion"),
        _getItem(new Icon(Icons.home), "Pagina Principal", "/"),
        _getItem(new Icon(Icons.battery_charging_full), "Bateria", "/bateria"),
        info
      ],
    );
    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Menu"),
      ),
      drawer: new Drawer(
        child: _getDrawer(context),
      ),
    );
  }
}
