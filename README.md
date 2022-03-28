# WHAT THE Fu#k is this?
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 0;
    return const MaterialApp(
      home:  Material(
        child: Center(
          
          child: Text("$days  World"),

        ),
      ),
    );
  }
}