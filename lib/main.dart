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
  String exp = "eg:1+1";

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

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
              margin: const EdgeInsets.fromLTRB(8, 180, 8, 3),
              color: Colors.white,
              height: 50,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  exp,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 50,
              color: Colors.white,
              child: Align(
                alignment: Alignment.centerRight,
                child: TextField(
                  readOnly: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                   ),
                  decoration: InputDecoration(
                    hintText: "1+2",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: (){}, 
                      ),
                  ),
                  controller: textEditingController,
                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: TextButton.icon(
                        icon: Icon(Icons.backspace),
                        label: Text(""),
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton.icon(
                        icon: Icon(Icons.backspace),
                        label: Text(""),
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton.icon(
                        icon: Icon(Icons.backspace),
                        label: Text(""),
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton.icon(
                        icon: Icon(Icons.backspace),
                        label: Text(""),
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
                      margin: const EdgeInsets.all(18),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            // result = double.parse(textEditingController.text) * 82.55;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(Size(60, 60)),
                          maximumSize: MaterialStatePropertyAll(Size(60, 60)),
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
