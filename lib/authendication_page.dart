import 'dart:io';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'calculator_page.dart';
import 'vault_page.dart';

class AuthendicationPage extends StatefulWidget {
  const AuthendicationPage({super.key, required this.title});
  final String title;

  @override
  State<AuthendicationPage> createState() => _AuthendicationPageState();
}

class _AuthendicationPageState extends State<AuthendicationPage> {
  TextEditingController textEditingController = TextEditingController();
  String exp = "";
  double bmargin = 5;
  double bsize = 85;
  double bheight = 60;
  bool showPage2Content = false;
  bool showcalculatorPage = false;
  bool showVaultPage = false;
  var appStorage;

  void _showcalculatorPage() {
    setState(() {
      showcalculatorPage = !showcalculatorPage;
    });
  }

  void _showVaultPage() {
    setState(() async {
      showVaultPage = !showVaultPage;
      appStorage = await getApplicationDocumentsDirectory();
    });
  }

  Future<bool> authenticate(String inputPassword) async {
    const secureStorage = FlutterSecureStorage();
    var storedPassword = await secureStorage.read(key: 'password');
    debugPrint(storedPassword);
    return storedPassword == inputPassword;
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double containerWidth = screenWidth * 0.8; // 80% of the screen width
    if (showcalculatorPage) return const CalculatorPage(title: 'Calculator');

    if (showVaultPage) {
      return VaultPage(
        title: 'Vault Page', 
        setdir: "${appStorage.path}/MySecretFolder", 
        itemToMoveAndCopy: const [], 
        );
      // return VaultPage(title: 'Vault Page', setdir: '/storage/emulated/0');
    }

    final textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 44, 44, 44),
        width: 3,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(7),
    );

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

    return WillPopScope(
      onWillPop: () async {
        // Program to exit app
        // ignore: unused_local_variable, use_build_context_synchronously
        bool shouldPop = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit App?'),
            content: const Text('Are you sure you want to exit?'),
            actions: <Widget>[
              TextButton(
                // onPressed: () => Navigator.of(context).pop(true),
                    onPressed: () => Navigator.of(context).pop(true),
                child: const Text('No'),
              ),
              TextButton(
                // onPressed: () => Navigator.of(context).pop(true),
                    onPressed: (){
                      exit(0);
                    },
                child: const Text('Yes'),
              ),
            ],
          ),
        );

        // debugPrint(
        //     'appStorage.path: ${appStorage.path}/MySecretFolder !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        // debugPrint(
        //     'currentDirectory:  ${currentDirectory.split('/').last} !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        // debugPrint(
        //     'parentDirectory:  $parentDirectory !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        // ignore: use_build_context_synchronously
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          decoration: threeDButton,
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 91, 126, 78),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(8),
                      height: 50,
                      // width: 370,
                      child: Text(
                        exp,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.end,
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
                        // border: ,
                        color: const Color.fromARGB(255, 91, 126, 78),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: const EdgeInsets.all(8),
                      height: 75,
                      width: 100,
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
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                textEditingController.text = "";
                                exp = "";
                              });
                            },
                          ),
                          enabledBorder: textFieldBorder,
                          focusedBorder: textFieldBorder,
                        ),
                        controller: textEditingController,
                        textAlign: TextAlign.end,
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}(";
                          });
                        },
                        // style: ButtonStyle(
                        //   backgroundColor: MaterialStatePropertyAll(Colors.white),
                        //   foregroundColor: MaterialStatePropertyAll(Colors.black),
                        //   minimumSize:
                        //       MaterialStatePropertyAll(Size(bsize, bheight)),
                        //   maximumSize:
                        //       MaterialStatePropertyAll(Size(bsize, bheight)),
                        // ),
                        child: const Text(
                          "(",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 245, 241, 241)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
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
                        child: const Text(
                          ")",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 245, 241, 241)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}+";
                          });
                        },
                        child: const Text(
                          "+",
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}8";
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}-";
                          });
                        },
                        child: const Text(
                          "-",
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}5";
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}*";
                          });
                        },
                        child: const Text(
                          "x",
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}2";
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                  Expanded(
                    child: Container(
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}/";
                          });
                        },
                        child: const Text(
                          "/",
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}0";
                          });
                        },
                        onLongPress: _showcalculatorPage,
                        //() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => AuthendicationPage(
                        //                 title: 'Authendication Needed',
                        //               )));
                        // },
    
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
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
                      decoration: threeDButton,
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            textEditingController.text =
                                "${textEditingController.text}%";
                          });
                        },
                        child: const Text(
                          "%",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 245, 241, 241)),
                        ),
                      ),
                    ),
                  ),
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
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () async {
                          String inputPassword = textEditingController.text;
                          bool isAuthenticated =
                              await authenticate(inputPassword);
                          debugPrint('isAuthenticated: $isAuthenticated as');
                          if (isAuthenticated) {
                            textEditingController.text = "";
                            exp = textEditingController.text;
                            _showVaultPage();
                            return;
    
                            // ignore: use_build_context_synchronously
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => VaultPage(
                            //               title: 'Vault Opend', setdir: appStorage.path,
                            //             )));
                          }
                          setState(() {
                            exp = textEditingController.text;
                            try {
                              Parser parser = Parser();
                              Expression expression = parser.parse(exp);
                              ContextModel contextModel = ContextModel();
                              textEditingController.text = expression
                                  .evaluate(EvaluationType.REAL, contextModel)
                                  .toString();
                            } catch (e) {
                              debugPrint("Error : $e");
                            }
                          });
                        },
                        child: const Text(
                          "=",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 245, 241, 241)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   child: const Icon(Icons.add),
        // ), //s trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
