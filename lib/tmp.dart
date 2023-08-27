import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: isFirstTime ? '/first' : '/second', // Set initial route based on condition
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

bool get isFirstTime {
  // Logic to determine if it's the first time app is opened after installation
  // You can use shared preferences or other methods to track this
  return true; // Change this to your logic
}




// FirstPage.dart

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(child: Text('Welcome to the First Page')),
    );
  }
}

// SecondPage.dart

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(child: Text('Welcome to the Second Page')),
    );
  }
}





