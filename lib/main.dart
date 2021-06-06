import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("Hi!"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.add, "Tambah"),
              buildCard(Icons.remove, "Hapus")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
