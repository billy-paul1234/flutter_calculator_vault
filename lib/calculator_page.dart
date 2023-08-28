import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter_calculator_vault/authendication_page.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key, required this.title});
  final String title;

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController textEditingController = TextEditingController();
  String exp = "";
  double bmargin = 5;
  double bsize = 85;
  double bheight = 60;

  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double containerWidth = screenWidth * 0.8; // 80% of the screen width
    double bsize = 85;

    final textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(0),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: const Color.fromARGB(255, 39, 38, 38),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 146, 144, 143),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    // width: 370,
                    child: Text(
                      exp,
                      style: const TextStyle(
                        color: Colors.white,
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
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.all(8),
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
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              textEditingController.text = "";
                              exp="";
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
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton.icon(
                      icon: Icon(Icons.backspace_sharp),
                      label: Text(""),
                      onPressed: () {
                        setState(() {
                          if (textEditingController.text.isNotEmpty) {
                            textEditingController.text=textEditingController.text.substring(0,textEditingController.text.length-1);
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}(";
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
                        "(",
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
                          textEditingController.text = "${textEditingController.text})";
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
                        ")",
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
                          exp = textEditingController.text;
                          try {
                            Parser parser= Parser();
                            Expression expression = parser.parse(exp);
                             ContextModel contextModel =ContextModel(); 
                            textEditingController.text = expression.evaluate(EvaluationType.REAL, contextModel).toString() ;
                          } catch (e) {
                            debugPrint("Error : $e");
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
                      child: const Text(
                        "=",
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
                          textEditingController.text = "${textEditingController.text}7";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}8";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}9";
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
                        "9",
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
                          textEditingController.text = "${textEditingController.text}+";
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
                        "+",
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
                          textEditingController.text = "${textEditingController.text}4";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}5";
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
                          textEditingController.text = "${textEditingController.text}6";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}-";
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
                        "-",
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
                          textEditingController.text = "${textEditingController.text}1";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}2";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}3";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}*";
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
                        "x",
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
                          textEditingController.text = "${textEditingController.text}0";
                        });
                      },
                      onLongPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AuthendicationPage(title: 'Authendication Needed',))
                          );
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}.";
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(bmargin),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.text = "${textEditingController.text}%";
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
                        "%",
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
                          textEditingController.text = "${textEditingController.text}/";
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                        maximumSize:
                            MaterialStatePropertyAll(Size(bsize, bheight)),
                      ),
                      child: const Text(
                        "/",
                        style: TextStyle(fontSize: 33),
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
    );
  }
}
