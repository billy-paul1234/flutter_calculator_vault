import 'package:flutter/material.dart';
import 'package:flutter_calculator_vault/calculator_page.dart';
import 'package:flutter_calculator_vault/set_password.dart';
// import 'package:flutter_calculator_vault/tmp.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isFirstTime = prefs.getBool('first_time') ?? true;

  runApp(MyApp(isFirstTime));
}

class MyApp extends StatelessWidget {
  final bool isFirstTime;

  const MyApp(this.isFirstTime, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      darkTheme: ThemeData.dark(),
      // home: const CalculatorPage(title: 'Calculator'),
      initialRoute: isFirstTime ? '/first' : '/second',
      routes: {
        '/first': (context) => const SetPassword(title: 'Set Password',),
        '/second': (context) => const CalculatorPage(title: 'Calculator',),
      }
    );
  }
}
