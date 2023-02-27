import 'package:flutter/material.dart';

class hakkimizda extends StatefulWidget {
  const hakkimizda({Key? key}) : super(key: key);

  @override
  State<hakkimizda> createState() => _hakkimizdaState();
}

class _hakkimizdaState extends State<hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkimizda",style: TextStyle(fontFamily: "myFont"),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hakkimizda Sayfasi", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily:"myFont"),)
          ],
        ),
      ),


    );
  }
}
