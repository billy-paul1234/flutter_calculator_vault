import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class VaultPage extends StatefulWidget {
  const VaultPage({super.key, required this.title});
  final String title;

  @override
  State<VaultPage> createState() => _VaultPageState();
}

class _VaultPageState extends State<VaultPage> {
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
            Text("VaultPage")
          ],
          ),
      ),
    );
  }
}
