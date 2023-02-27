import 'package:flutter/material.dart';

class CityGuidePage extends StatefulWidget {
  const CityGuidePage({Key? key}) : super(key: key);

  @override
  State<CityGuidePage> createState() => _CityGuidePageState();
}

class _CityGuidePageState extends State<CityGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("City Guide ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
    );



  }
}
