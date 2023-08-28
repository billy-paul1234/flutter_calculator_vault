import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key, required this.title});
  final String title;

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  TextEditingController textEditingController = TextEditingController();


  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("InstructionPage")
          ],
          ),
      ),
    );
  }
}
