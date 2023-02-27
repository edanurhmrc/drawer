import 'package:flutter/material.dart';

class iletisim extends StatefulWidget {
  const iletisim({Key? key}) : super(key: key);

  @override
  State<iletisim> createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iletisim",style: TextStyle(fontFamily: "myFont"),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Iletisim Sayfasi", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily:"myFont"),)
          ],
        ),
      ),
    );
  }
}