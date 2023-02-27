import 'package:drawer/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigoAccent[200],
        accentColor: Colors.indigoAccent[100],
        appBarTheme:  AppBarTheme(
          color: Colors.indigoAccent[100],
          elevation: 1,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        primarySwatch: Colors.indigo,
      ),
      home:  HomePage(),
    );
  }
}


