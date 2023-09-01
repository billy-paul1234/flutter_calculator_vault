
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Resizable Line')),
        body: Center(
          child: ResizableLine(),
        ),
      ),
    );
  }
}

class ResizableLine extends StatefulWidget {
  @override
  _ResizableLineState createState() => _ResizableLineState();
}

class _ResizableLineState extends State<ResizableLine> {
  double lineLength = 100.0;
  var line1 = Colors.black;
  var line2 = Colors.black;
  var line3 = Colors.black;
  var line4 = Colors.black;
  var line5 = Colors.black;
  var line6 = Colors.black;
  var line7 = Colors.black;

  changeColor(int num) {
    setState(() {
      if (num == 0) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.black;
        line5 = Colors.black;
        line6 = Colors.black;
        line7 = Colors.white;
      }
      else if (num == 1) {
        line1 = Colors.white;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.white;
        line5 = Colors.white;
        line6 = Colors.white;
        line7 = Colors.white;
      }
      else if (num == 2) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.white;
        line4 = Colors.black;
        line5 = Colors.black;
        line6 = Colors.white;
        line7 = Colors.black;
      }

      else if (num == 3) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.black;
        line5 = Colors.white;
        line6 = Colors.white;
        line7 = Colors.black;
      }

      else if (num == 4) {
        line1 = Colors.white;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.white;
        line5 = Colors.white;
        line6 = Colors.black;
        line7 = Colors.black;
      }

      else if (num == 5) {
        line1 = Colors.black;
        line2 = Colors.white;
        line3 = Colors.black;
        line4 = Colors.black;
        line5 = Colors.white;
        line6 = Colors.black;
        line7 = Colors.black;
      }

      else if (num == 6) {
        line1 = Colors.black;
        line2 = Colors.white;
        line3 = Colors.black;
        line4 = Colors.black;
        line5 = Colors.black;
        line6 = Colors.black;
        line7 = Colors.black;
      }

      else if (num == 7) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.white;
        line5 = Colors.white;
        line6 = Colors.white;
        line7 = Colors.white;
      }

      else if (num == 8) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.black;
        line5 = Colors.black;
        line6 = Colors.black;
        line7 = Colors.black;
      }

      else if (num == 9) {
        line1 = Colors.black;
        line2 = Colors.black;
        line3 = Colors.black;
        line4 = Colors.white;
        line5 = Colors.white;
        line6 = Colors.black;
        line7 = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 20,
                            height: 5,
                            color: line1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 5,
                            height: 20,
                            color: line6,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 5,
                            height: 20,
                            color: line2,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 20,
                            height: 5,
                            color: line7,
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 5,
                            height: 20,
                            color: line5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 5,
                            height: 20,
                            color: line3,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 20,
                            height: 5,
                            color: line4,
                          ),
                        ],
                      )
                      // Container(
                      //   width: 10,
                      //   height: 10,
                      //   child: CustomPaint(
                      //     painter: LinePainter(15),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed: (){
                  for(int i = 0 ; i <= 10; i++) changeColor(i);
                },
                child: Text("click"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}