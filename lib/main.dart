import 'package:flutter/material.dart';
import 'MyCalculator.dart';


void main() {
  runApp(Calculator());
}


class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primaryColor: Colors.orange[800]),
      home: MyCalculator(),
    );
  }
}