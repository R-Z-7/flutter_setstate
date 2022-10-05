// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const Provider());
}

class Provider extends StatelessWidget {
  const Provider({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Center(
          child: Text(
        "MELCOW",
        style: TextStyle(color: Colors.redAccent),
      )),
    );
  }
}
