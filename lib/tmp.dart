// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// // // // // // // // // // void main() {
// // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // }

// // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return MaterialApp(
// // // // // // // // // //       title: 'Secure Storage Example',
// // // // // // // // // //       home: PasswordPage(),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // class PasswordPage extends StatefulWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   _PasswordPageState createState() => _PasswordPageState();
// // // // // // // // // // }

// // // // // // // // // // class _PasswordPageState extends State<PasswordPage> {
  
// // // // // // // // // //   TextEditingController _passwordController = TextEditingController();

// // // // // // // // // //   Future<void> storePassword(String password) async {
// // // // // // // // // //     final secureStorage = FlutterSecureStorage();
// // // // // // // // // //     await secureStorage.write(key: 'password', value: password);
// // // // // // // // // //   }

// // // // // // // // // //   Future<bool> authenticate(String inputPassword) async {
// // // // // // // // // //     final secureStorage = FlutterSecureStorage();
// // // // // // // // // //     final storedPassword = await secureStorage.read(key: 'password');
// // // // // // // // // //     return storedPassword == inputPassword;
// // // // // // // // // //   }

// // // // // // // // // //   void _authenticate() async {
// // // // // // // // // //     String inputPassword = _passwordController.text;
// // // // // // // // // //     bool isAuthenticated = await authenticate(inputPassword);
// // // // // // // // // //     if (isAuthenticated) {
// // // // // // // // // //       debugPrint("Authentication successful");
// // // // // // // // // //       // Navigate to the next screen
// // // // // // // // // //     } else {
// // // // // // // // // //       debugPrint("Authentication failed");
// // // // // // // // // //       // Display an error message
// // // // // // // // // //     }
// // // // // // // // // //   }

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       appBar: AppBar(
// // // // // // // // // //         title: Text('Secure Storage Example'),
// // // // // // // // // //       ),
// // // // // // // // // //       body: Padding(
// // // // // // // // // //         padding: EdgeInsets.all(16.0),
// // // // // // // // // //         child: Column(
// // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //           children: [
// // // // // // // // // //             TextField(
// // // // // // // // // //               controller: _passwordController,
// // // // // // // // // //               obscureText: true,
// // // // // // // // // //               decoration: InputDecoration(labelText: 'Password'),
// // // // // // // // // //             ),
// // // // // // // // // //             SizedBox(height: 16.0),
// // // // // // // // // //             ElevatedButton(
// // // // // // // // // //               onPressed: _authenticate,
// // // // // // // // // //               child: Text('Authenticate'),
// // // // // // // // // //             ),
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }






// // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // void main() {
// // // // // // // // //   runApp(MyApp());
// // // // // // // // // }

// // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return MaterialApp(
// // // // // // // // //       initialRoute: '/',
// // // // // // // // //       routes: {
// // // // // // // // //         '/': (context) => HomePage(),
// // // // // // // // //         '/page2': (context) => Page2(),
// // // // // // // // //       },
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class HomePage extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(title: Text('Home Page')),
// // // // // // // // //       body: Center(
// // // // // // // // //         child: ElevatedButton(
// // // // // // // // //           onPressed: () {
// // // // // // // // //             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page2()));
// // // // // // // // //           },
// // // // // // // // //           child: Text('Navigate to Page 2'),
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class Page2 extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(title: Text('Page 2')),
// // // // // // // // //       body: Center(
// // // // // // // // //         child: Column(
// // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // //           children: [
// // // // // // // // //             Text('Page 2 Content'),
// // // // // // // // //             ElevatedButton(
// // // // // // // // //               onPressed: () {
// // // // // // // // //                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page3()));
// // // // // // // // //               },
// // // // // // // // //               child: Text('Navigate to Page 3 (Replace)'),
// // // // // // // // //             ),
// // // // // // // // //             ElevatedButton(
// // // // // // // // //               onPressed: () {
// // // // // // // // //                 Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
// // // // // // // // //               },
// // // // // // // // //               child: Text('Navigate to Page 3'),
// // // // // // // // //             ),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class Page3 extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       appBar: AppBar(title: Text('Page 3')),
// // // // // // // // //       body: Center(
// // // // // // // // //         child: Text('Page 3 Content'),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }



// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return MaterialApp(
// // // // // // // //       home: Scaffold(
// // // // // // // //         appBar: AppBar(
// // // // // // // //           title: Text('File Picker Example'),
// // // // // // // //         ),
// // // // // // // //         body: Center(
// // // // // // // //           child: ElevatedButton(
// // // // // // // //             onPressed: () async {
// // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // //                 for (var file in result.files) {
// // // // // // // //                   debugPrint('Selected file: ${file.name}');
// // // // // // // //                   debugPrint('File size: ${file.size}');
// // // // // // // //                   debugPrint('File path: ${file.path}');
// // // // // // // //                   debugPrint('File extension: ${file.extension}');
// // // // // // // //                   debugPrint('----------------------');
// // // // // // // //                 }
// // // // // // // //               } else {
// // // // // // // //                 debugPrint('No files selected.');
// // // // // // // //               }
// // // // // // // //             },
// // // // // // // //             child: Text('Select Files'),
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // void main() => runApp(FilePickerExample());




// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return MaterialApp(
// // // // // // //       home: Scaffold(
// // // // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // // // //         body: Center(
// // // // // // //           child: ElevatedButton(
// // // // // // //             onPressed: () async {
// // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // //                 List<String> fileNames = result.files.map((file) => file.name).toList();
// // // // // // //                 debugPrint('Selected files: ${fileNames.join(", ")}');
// // // // // // //               } else {
// // // // // // //                 debugPrint('No files selected.');
// // // // // // //               }
// // // // // // //             },
// // // // // // //             child: Text('Select Files'),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // void main() {
// // // // // // //   runApp(FilePickerExample());
// // // // // // // }







// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // class FilePickerExample extends StatelessWidget {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return MaterialApp(
// // // // // //       home: Scaffold(
// // // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // // //         body: Center(
// // // // // //           child: ElevatedButton(
// // // // // //             onPressed: () async {
// // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // //                 List<String> fileDetails = result.files
// // // // // //                     .map((file) => "${file.name} (${_getFileType(file.extension)})")
// // // // // //                     .toList();
// // // // // //                 debugPrint('Selected files: ${fileDetails.join(", ")}');
// // // // // //               } else {
// // // // // //                 debugPrint('No files selected.');
// // // // // //               }
// // // // // //             },
// // // // // //             child: Text('Select Files'),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   String _getFileType(String? extension) {
// // // // // //     switch (extension?.toLowerCase()) {
// // // // // //       case 'pdf':
// // // // // //         return 'PDF Document';
// // // // // //       case 'doc':
// // // // // //       case 'docx':
// // // // // //         return 'Word Document';
// // // // // //       case 'xls':
// // // // // //       case 'xlsx':
// // // // // //         return 'Excel Document';
// // // // // //       // Add more cases for other file types as needed
// // // // // //       default:
// // // // // //         return 'Unknown';
// // // // // //     }
// // // // // //   }
// // // // // // }

// // // // // // void main() {
// // // // // //   runApp(FilePickerExample());
// // // // // // }



// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:file_picker/file_picker.dart';

// // // // // class FilePickerExample extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       home: Scaffold(
// // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // //         body: Center(
// // // // //           child: ElevatedButton(
// // // // //             onPressed: () async {
// // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // //               if (result != null && result.files.isNotEmpty) {
// // // // //                 List<String?> filePaths = result.paths.toList();
// // // // //                 debugPrint('Selected files:');
// // // // //                 for (String? path in filePaths) {
// // // // //                   debugPrint(path);
// // // // //                 }
// // // // //               } else {
// // // // //                 debugPrint('No files selected.');
// // // // //               }
// // // // //             },
// // // // //             child: Text('Select Files'),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // void main() {
// // // // //   runApp(FilePickerExample());
// // // // // }









// // // // import 'dart:io'; // Import the 'dart:io' library for file operations
// // // // import 'package:flutter/material.dart';
// // // // import 'package:file_picker/file_picker.dart';

// // // // class FilePickerExample extends StatelessWidget {
// // // //   final String myPath = '/path/to/your/destination/directory'; // Update with your destination path

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: Scaffold(
// // // //         appBar: AppBar(title: const Text('File Picker Example')),
// // // //         body: Center(
// // // //           child: ElevatedButton(
// // // //             onPressed: () async {
// // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // //               if (result != null && result.files.isNotEmpty) {
// // // //                 for (var file in result.files) {
// // // //                   File sourceFile = File("${file.path}");
// // // //                   File destinationFile = File('$myPath/${file.name}');

// // // //                   try {
// // // //                     await sourceFile.copy(destinationFile.path);
// // // //                     debugPrint('Copied ${file.name} to $myPath');
// // // //                   } catch (e) {
// // // //                     debugPrint('Error copying ${file.name}: $e');
// // // //                   }
// // // //                 }
// // // //               } else {
// // // //                 debugPrint('No files selected.');
// // // //               }
// // // //             },
// // // //             child: const Text('Select Files'),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // void main() {
// // // //   runApp(FilePickerExample());
// // // // }











// // //     String currentPath = widget.setdir;



// // //           if (result != null && result.files.isNotEmpty) {
// // //             for (var file in result.files) {
// // //               File sourceFile = File("${file.path}");
// // //               File destinationFile = File('$currentPath/${file.name}');

// // //               try {
// // //                 await sourceFile.copy(destinationFile.path);
// // //                 debugPrint('Copied ${file.name} to $currentPath');
// // //               } catch (e) {
// // //                 debugPrint('Error copying ${file.name}: $e');
// // //               }
// // //               _refreshVaultPage();
// // //             }
// // //           } else {
// // //             debugPrint('No files selected.');
// // //           }




// // void main() {
// //   double value = 18766.333;

// //   String formattedValue = value.toStringAsFixed(2);

// //   print(formattedValue); // Output: 1.33
// // }


//               // _refreshVaultPage();
//               // final file = result.files.first;
//               // // ignore: unused_local_variable
//               // // File tmp = await
//               // saveFile(file);
//               // setState(() {
//               // _refreshVaultPage();
//               // });


//                 // String modifiedString = originalString.replaceAll(substringToRemove, '');
















// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView.builder with TextField'),
//       ),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverList(
//             delegate: SliverChildListDelegate([
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   decoration: InputDecoration(labelText: 'Search'),
//                 ),
//               ),
//             ]),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 // Use ListView.builder content here
//                 return ListTile(title: Text('Item $index'));
//               },
//               childCount: 10, // Replace with the actual count of items
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
