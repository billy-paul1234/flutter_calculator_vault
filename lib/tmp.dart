// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Secure Storage Example',
//       home: PasswordPage(),
//     );
//   }
// }

// class PasswordPage extends StatefulWidget {
//   @override
//   _PasswordPageState createState() => _PasswordPageState();
// }

// class _PasswordPageState extends State<PasswordPage> {
  
//   TextEditingController _passwordController = TextEditingController();

//   Future<void> storePassword(String password) async {
//     final secureStorage = FlutterSecureStorage();
//     await secureStorage.write(key: 'password', value: password);
//   }

//   Future<bool> authenticate(String inputPassword) async {
//     final secureStorage = FlutterSecureStorage();
//     final storedPassword = await secureStorage.read(key: 'password');
//     return storedPassword == inputPassword;
//   }

//   void _authenticate() async {
//     String inputPassword = _passwordController.text;
//     bool isAuthenticated = await authenticate(inputPassword);
//     if (isAuthenticated) {
//       print("Authentication successful");
//       // Navigate to the next screen
//     } else {
//       print("Authentication failed");
//       // Display an error message
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Secure Storage Example'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(labelText: 'Password'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _authenticate,
//               child: Text('Authenticate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page2()));
          },
          child: Text('Navigate to Page 2'),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 2 Content'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page3()));
              },
              child: Text('Navigate to Page 3 (Replace)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
              },
              child: Text('Navigate to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Center(
        child: Text('Page 3 Content'),
      ),
    );
  }
}
