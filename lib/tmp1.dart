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
    final secureStorage = FlutterSecureStorage();
    await secureStorage.write(key: 'password', value: password);
  }

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
            TextField(
              controller: textEditingController,
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}(";
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            setState(() {
                              textEditingController.text =
                                  "${textEditingController.text})";
                            });
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}(";
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            setState(() {
                              textEditingController.text =
                                  "${textEditingController.text})";
                            });
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}(";
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            setState(() {
                              textEditingController.text =
                                  "${textEditingController.text})";
                            });
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}(";
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            setState(() {
                              textEditingController.text =
                                  "${textEditingController.text})";
                            });
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
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
                  ],
                ),
                Column(
                  children: [
                    Container(
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
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize:
                              MaterialStatePropertyAll(Size(bsize, bheight)),
                          maximumSize:
                              MaterialStatePropertyAll(Size(bsize, bheight)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          TextButton(
            onPressed: (){},
            child: Text(
              "Submit",
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
              ),
          )
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

