import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:math_expressions/math_expressions.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key, required this.title});
  final String title;

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController textEditingController = TextEditingController();


  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    _setFirstTimeFlag(); // Store flag when visiting first page
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("SetPassword")
          ],
          ),
      ),
    );
  }
    Future<void> _setFirstTimeFlag() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('first_time', false);
  }
}
