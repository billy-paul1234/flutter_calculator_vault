// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'calculator_page.dart';
// import 'instruction_page.dart';
// import 'instruction_page.dart';
// import 'package:math_expressions/math_expressions.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key, required this.title});
  final String title;

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController textEditingController = TextEditingController();
  double bmargin = 5;
  double bsize = 85;
  double bheight = 60;
  bool showPage2Content = true;
  // ignore: prefer_typing_uninitialized_variables
  var setpasswordpage;
  var calculatorpage = const CalculatorPage(title: "Calculator");

  // void togglePage2Content() {
  //   setState(() {
  //     showPage2Content = !showPage2Content;
  //   });
  // }

  Future<void> storePassword(String password) async {
    const secureStorage = FlutterSecureStorage();
    await secureStorage.write(key: 'password', value: password);
    var st = await secureStorage.read(key: 'password');
    debugPrint(st);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _setFirstTimeFlag() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('first_time_setPass', false);
    }

    final threeDButton = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 112, 113, 112),
          Color.fromARGB(255, 63, 65, 63)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 5.0,
          offset: const Offset(0, 3),
        ),
      ],
    );

    final textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(0),
    );
    // ignore: dead_code
    setpasswordpage = Scaffold(
      // backgroundColor: const Color.fromARGB(255, 40, 39, 39),
      // drawerScrimColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: threeDButton,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 91, 126, 78),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.all(8),
                    height: 75,
                    // width: 370,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      readOnly: true,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        hintText: textEditingController.text,
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        enabledBorder: textFieldBorder,
                        focusedBorder: textFieldBorder,
                      ),
                      controller: textEditingController,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}7";
                        });
                      },
                      child: const Text(
                        "7",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}8";
                          });
                        });
                      },
                      child: const Text(
                        "8",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}9";
                        });
                      },
                      child: const Text(
                        "9",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}4";
                        });
                      },
                      child: const Text(
                        "4",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}5";
                          });
                        });
                      },
                      child: const Text(
                        "5",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}6";
                        });
                      },
                      child: const Text(
                        "6",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}1";
                        });
                      },
                      child: const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}2";
                          });
                        });
                      },
                      child: const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}3";
                        });
                      },
                      child: const Text(
                        "3",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}.";
                        });
                      },
                      child: const Text(
                        ".",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}0";
                          });
                        });
                      },
                      child: const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 245, 241, 241)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    decoration: threeDButton,
                    child: TextButton.icon(
                      icon: const Icon(Icons.backspace_sharp,
                          color: Color.fromARGB(255, 245, 241, 241)),
                      label: const Text(""),
                      onPressed: () {
                        setState(() {
                          if (textEditingController.text.isNotEmpty) {
                            textEditingController.text =
                                textEditingController.text.substring(
                                    0, textEditingController.text.length - 1);
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(244, 237, 111, 80),
                          Color.fromARGB(244, 255, 51, 0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5.0,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    // margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                    height: 50,
                    child: TextButton(
                      onPressed: () async {
                        await storePassword(textEditingController.text);
                        textEditingController.text = "";
                        await _setFirstTimeFlag();
                        // Navigator.pushReplacementNamed(context, '/second');
                        // ignore: use_build_context_synchronously
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculatorPage(title: 'Calculator pas',)));
                        // Store flag when visiting first page
                        setState(() {
                          showPage2Content = !showPage2Content;
                        });
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Color.fromARGB(255, 245, 241, 241),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
    if (showPage2Content) return setpasswordpage;
    return calculatorpage;
  }
}
