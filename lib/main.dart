import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();
  String exp = "0+0";
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(8, 200, 8, 3),
              padding: const EdgeInsets.all(8),
              color: const Color.fromRGBO(255, 255, 255, 1),
              height: 50,
              width: 400,
                child: Text(
                  exp,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.end,
                ),
            
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 50,
              width: 400,
              color: Colors.white,
              child: TextField(
                readOnly: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
                decoration: InputDecoration(
                  hintText: "0+0",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
                controller: textEditingController,
                textAlign: TextAlign.end,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton.icon(
                        icon: Icon(Icons.backspace),
                        label: Text(""),
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(bmargin),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
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
                  ],
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
