import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  double bmargin = 5;
  double bsize = 85;
  double bheight = 60;

  Future<void> storePassword(String password) async {
    const secureStorage = FlutterSecureStorage();
    await secureStorage.write(key: 'password', value: password);
  }

  @override
  Widget build(BuildContext context) {
    final textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(0),
    );

    _setFirstTimeFlag(); // Store flag when visiting first page
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 39, 39),
      drawerScrimColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.fromLTRB(1, 1, 1, 200),
                    height: 50,
                    // width: 370,
                    child: TextField(
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
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}7";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(255, 255, 255, 1)),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "7",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}8";
                          });
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "8",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}9";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "9",
                        style: TextStyle(fontSize: 33),
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
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}4";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "4",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}5";
                          });
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "5",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}6";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "6",
                        style: TextStyle(fontSize: 33),
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
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}1";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}2";
                          });
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "2",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}3";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "3",
                        style: TextStyle(fontSize: 33),
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
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text =
                              "${textEditingController.text}.";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        ".",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}0";
                          });
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "0",
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton.icon(
                      icon: Icon(Icons.backspace_sharp),
                      label: Text(""),
                      onPressed: () {
                        setState(() {
                          if (textEditingController.text.isNotEmpty) {
                            textEditingController.text =
                                textEditingController.text.substring(
                                    0, textEditingController.text.length - 1);
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
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
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    // margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        storePassword(textEditingController.text);
                        textEditingController.text="";
                        exit(0);
                        // FlutterResart.ResartApp();
                      },
                      child: Text(
                        "Submit",
                        style: const TextStyle(
                          color: Colors.black,
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
        // ),
      ),
    );
  }

  Future<void> _setFirstTimeFlag() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('first_time', false);
  }
}
