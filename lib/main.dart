import 'package:flutter/material.dart';
import 'package:flutter_calculator_vault/CalculatorPage.dart';
// import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      darkTheme: ThemeData.dark(),
      home: const CalculatorPage(title: 'Calculator'),
    );
  }
}
