import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Map ",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
