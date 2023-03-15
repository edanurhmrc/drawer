import 'package:flutter/material.dart';

class AddFAB extends StatefulWidget {
  const AddFAB({Key? key}) : super(key: key);

  @override
  State<AddFAB> createState() => _AddFABState();
}

class _AddFABState extends State<AddFAB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Center(
          child: Text(
            "Add floating Action Button ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
    );
  }
}