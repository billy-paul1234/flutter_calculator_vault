import 'package:flutter/material.dart';

import 'calculator_page.dart';
// import 'package:math_expressions/math_expressions.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key, required this.title});
  final String title;

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  TextEditingController textEditingController = TextEditingController();
  String _imagepath = "assets/calculator.png";
  int buttonnum = 1;
  String imagetxt = "Long Press on Zero";
  int totalimages = 2;
  var allignbutton = MainAxisAlignment.end;
  bool showPage2Content = false;

  void togglePage2Content() {
    setState(() {
      showPage2Content = !showPage2Content;
    });
  }

  void backimage() {
    setState(() {
      buttonnum--;
      imagetxt = "Long Press on Zero";
      _imagepath = "assets/calculator.png";
      if (buttonnum == 1) allignbutton = MainAxisAlignment.end;
    });
  }

  void nextimage() {
    setState(() {
      if (buttonnum < totalimages) buttonnum++;
      allignbutton = MainAxisAlignment.spaceBetween;
      imagetxt = "Enter Your Password and Press =";
      if (buttonnum == 2) _imagepath = "assets/authendication.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showPage2Content) {
      return const CalculatorPage(title: 'Calculator');
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 2, 2),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              _imagepath,
              height: 500,
              width: 500,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              height: 50,
              child: Text(
                imagetxt,
                style: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 251, 249, 249)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 1; j < buttonnum; j++)
                  Container(
                    margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                    child: const Icon(
                      size: 10,
                      color: Colors.white,
                      Icons.circle_outlined,
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                  child: const Icon(
                    size: 10,
                    color: Colors.white,
                    Icons.circle,
                  ),
                ),
                for (int i = buttonnum; i < totalimages; i++)
                  Container(
                    margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                    child: const Icon(
                      size: 10,
                      color: Colors.white,
                      Icons.circle_outlined,
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: allignbutton,
              children: [
                if (buttonnum != 1)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 241, 237, 237)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 8, 7, 7)),
                        ),
                        onPressed: backimage,
                        child: const Text(
                          "Previous",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                if (buttonnum < totalimages)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 244, 240, 240)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 11, 10, 10)),
                        ),
                        onPressed: nextimage,
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                if (buttonnum == totalimages)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 244, 240, 240)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 11, 10, 10)),
                        ),
                        onPressed: togglePage2Content,
                        child: const Text(
                          "Done",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
