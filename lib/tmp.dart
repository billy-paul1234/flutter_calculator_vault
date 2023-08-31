// // // // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // // // import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// // // // // // // // // // // // // // // void main() {
// // // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // // //       title: 'Secure Storage Example',
// // // // // // // // // // // // // // //       home: PasswordPage(),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class PasswordPage extends StatefulWidget {
// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   _PasswordPageState createState() => _PasswordPageState();
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // // class _PasswordPageState extends State<PasswordPage> {

// // // // // // // // // // // // // // //   TextEditingController _passwordController = TextEditingController();

// // // // // // // // // // // // // // //   Future<void> storePassword(String password) async {
// // // // // // // // // // // // // // //     final secureStorage = FlutterSecureStorage();
// // // // // // // // // // // // // // //     await secureStorage.write(key: 'password', value: password);
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   Future<bool> authenticate(String inputPassword) async {
// // // // // // // // // // // // // // //     final secureStorage = FlutterSecureStorage();
// // // // // // // // // // // // // // //     final storedPassword = await secureStorage.read(key: 'password');
// // // // // // // // // // // // // // //     return storedPassword == inputPassword;
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   void _authenticate() async {
// // // // // // // // // // // // // // //     String inputPassword = _passwordController.text;
// // // // // // // // // // // // // // //     bool isAuthenticated = await authenticate(inputPassword);
// // // // // // // // // // // // // // //     if (isAuthenticated) {
// // // // // // // // // // // // // // //       debugPrint("Authentication successful");
// // // // // // // // // // // // // // //       // Navigate to the next screen
// // // // // // // // // // // // // // //     } else {
// // // // // // // // // // // // // // //       debugPrint("Authentication failed");
// // // // // // // // // // // // // // //       // Display an error message
// // // // // // // // // // // // // // //     }
// // // // // // // // // // // // // // //   }

// // // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // // // // // //         title: Text('Secure Storage Example'),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //       body: Padding(
// // // // // // // // // // // // // // //         padding: EdgeInsets.all(16.0),
// // // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // // //             TextField(
// // // // // // // // // // // // // // //               controller: _passwordController,
// // // // // // // // // // // // // // //               obscureText: true,
// // // // // // // // // // // // // // //               decoration: InputDecoration(labelText: 'Password'),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //             SizedBox(height: 16.0),
// // // // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // // // //               onPressed: _authenticate,
// // // // // // // // // // // // // // //               child: Text('Authenticate'),
// // // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // // //     );
// // // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // // }

// // // // // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // // // // void main() {
// // // // // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // // //       initialRoute: '/',
// // // // // // // // // // // // // //       routes: {
// // // // // // // // // // // // // //         '/': (context) => HomePage(),
// // // // // // // // // // // // // //         '/page2': (context) => Page2(),
// // // // // // // // // // // // // //       },
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class HomePage extends StatelessWidget {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(title: Text('Home Page')),
// // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // //         child: ElevatedButton(
// // // // // // // // // // // // // //           onPressed: () {
// // // // // // // // // // // // // //             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page2()));
// // // // // // // // // // // // // //           },
// // // // // // // // // // // // // //           child: Text('Navigate to Page 2'),
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class Page2 extends StatelessWidget {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(title: Text('Page 2')),
// // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // // //           children: [
// // // // // // // // // // // // // //             Text('Page 2 Content'),
// // // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // // //               onPressed: () {
// // // // // // // // // // // // // //                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page3()));
// // // // // // // // // // // // // //               },
// // // // // // // // // // // // // //               child: Text('Navigate to Page 3 (Replace)'),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //             ElevatedButton(
// // // // // // // // // // // // // //               onPressed: () {
// // // // // // // // // // // // // //                 Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
// // // // // // // // // // // // // //               },
// // // // // // // // // // // // // //               child: Text('Navigate to Page 3'),
// // // // // // // // // // // // // //             ),
// // // // // // // // // // // // // //           ],
// // // // // // // // // // // // // //         ),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // // class Page3 extends StatelessWidget {
// // // // // // // // // // // // // //   @override
// // // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // // //     return Scaffold(
// // // // // // // // // // // // // //       appBar: AppBar(title: Text('Page 3')),
// // // // // // // // // // // // // //       body: Center(
// // // // // // // // // // // // // //         child: Text('Page 3 Content'),
// // // // // // // // // // // // // //       ),
// // // // // // // // // // // // // //     );
// // // // // // // // // // // // // //   }
// // // // // // // // // // // // // // }

// // // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // // //         appBar: AppBar(
// // // // // // // // // // // // //           title: Text('File Picker Example'),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         body: Center(
// // // // // // // // // // // // //           child: ElevatedButton(
// // // // // // // // // // // // //             onPressed: () async {
// // // // // // // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // // // // // // //                 for (var file in result.files) {
// // // // // // // // // // // // //                   debugPrint('Selected file: ${file.name}');
// // // // // // // // // // // // //                   debugPrint('File size: ${file.size}');
// // // // // // // // // // // // //                   debugPrint('File path: ${file.path}');
// // // // // // // // // // // // //                   debugPrint('File extension: ${file.extension}');
// // // // // // // // // // // // //                   debugPrint('----------------------');
// // // // // // // // // // // // //                 }
// // // // // // // // // // // // //               } else {
// // // // // // // // // // // // //                 debugPrint('No files selected.');
// // // // // // // // // // // // //               }
// // // // // // // // // // // // //             },
// // // // // // // // // // // // //             child: Text('Select Files'),
// // // // // // // // // // // // //           ),
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

// // // // // // // // // // // // // void main() => runApp(FilePickerExample());

// // // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // // // // // //   @override
// // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // // // // // // // // //         body: Center(
// // // // // // // // // // // //           child: ElevatedButton(
// // // // // // // // // // // //             onPressed: () async {
// // // // // // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // // // // // //                 List<String> fileNames = result.files.map((file) => file.name).toList();
// // // // // // // // // // // //                 debugPrint('Selected files: ${fileNames.join(", ")}');
// // // // // // // // // // // //               } else {
// // // // // // // // // // // //                 debugPrint('No files selected.');
// // // // // // // // // // // //               }
// // // // // // // // // // // //             },
// // // // // // // // // // // //             child: Text('Select Files'),
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }

// // // // // // // // // // // // void main() {
// // // // // // // // // // // //   runApp(FilePickerExample());
// // // // // // // // // // // // }

// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // //       home: Scaffold(
// // // // // // // // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // // // // // // // //         body: Center(
// // // // // // // // // // //           child: ElevatedButton(
// // // // // // // // // // //             onPressed: () async {
// // // // // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // // // // //                 List<String> fileDetails = result.files
// // // // // // // // // // //                     .map((file) => "${file.name} (${_getFileType(file.extension)})")
// // // // // // // // // // //                     .toList();
// // // // // // // // // // //                 debugPrint('Selected files: ${fileDetails.join(", ")}');
// // // // // // // // // // //               } else {
// // // // // // // // // // //                 debugPrint('No files selected.');
// // // // // // // // // // //               }
// // // // // // // // // // //             },
// // // // // // // // // // //             child: Text('Select Files'),
// // // // // // // // // // //           ),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   String _getFileType(String? extension) {
// // // // // // // // // // //     switch (extension?.toLowerCase()) {
// // // // // // // // // // //       case 'pdf':
// // // // // // // // // // //         return 'PDF Document';
// // // // // // // // // // //       case 'doc':
// // // // // // // // // // //       case 'docx':
// // // // // // // // // // //         return 'Word Document';
// // // // // // // // // // //       case 'xls':
// // // // // // // // // // //       case 'xlsx':
// // // // // // // // // // //         return 'Excel Document';
// // // // // // // // // // //       // Add more cases for other file types as needed
// // // // // // // // // // //       default:
// // // // // // // // // // //         return 'Unknown';
// // // // // // // // // // //     }
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // void main() {
// // // // // // // // // // //   runApp(FilePickerExample());
// // // // // // // // // // // }

// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return MaterialApp(
// // // // // // // // // //       home: Scaffold(
// // // // // // // // // //         appBar: AppBar(title: Text('File Picker Example')),
// // // // // // // // // //         body: Center(
// // // // // // // // // //           child: ElevatedButton(
// // // // // // // // // //             onPressed: () async {
// // // // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // // // //                 List<String?> filePaths = result.paths.toList();
// // // // // // // // // //                 debugPrint('Selected files:');
// // // // // // // // // //                 for (String? path in filePaths) {
// // // // // // // // // //                   debugPrint(path);
// // // // // // // // // //                 }
// // // // // // // // // //               } else {
// // // // // // // // // //                 debugPrint('No files selected.');
// // // // // // // // // //               }
// // // // // // // // // //             },
// // // // // // // // // //             child: Text('Select Files'),
// // // // // // // // // //           ),
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // void main() {
// // // // // // // // // //   runApp(FilePickerExample());
// // // // // // // // // // }

// // // // // // // // // import 'dart:io'; // Import the 'dart:io' library for file operations
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:file_picker/file_picker.dart';

// // // // // // // // // class FilePickerExample extends StatelessWidget {
// // // // // // // // //   final String myPath = '/path/to/your/destination/directory'; // Update with your destination path

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return MaterialApp(
// // // // // // // // //       home: Scaffold(
// // // // // // // // //         appBar: AppBar(title: const Text('File Picker Example')),
// // // // // // // // //         body: Center(
// // // // // // // // //           child: ElevatedButton(
// // // // // // // // //             onPressed: () async {
// // // // // // // // //               final result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // // // // // // //               if (result != null && result.files.isNotEmpty) {
// // // // // // // // //                 for (var file in result.files) {
// // // // // // // // //                   File sourceFile = File("${file.path}");
// // // // // // // // //                   File destinationFile = File('$myPath/${file.name}');

// // // // // // // // //                   try {
// // // // // // // // //                     await sourceFile.copy(destinationFile.path);
// // // // // // // // //                     debugPrint('Copied ${file.name} to $myPath');
// // // // // // // // //                   } catch (e) {
// // // // // // // // //                     debugPrint('Error copying ${file.name}: $e');
// // // // // // // // //                   }
// // // // // // // // //                 }
// // // // // // // // //               } else {
// // // // // // // // //                 debugPrint('No files selected.');
// // // // // // // // //               }
// // // // // // // // //             },
// // // // // // // // //             child: const Text('Select Files'),
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // void main() {
// // // // // // // // //   runApp(FilePickerExample());
// // // // // // // // // }

// // // // // // // //     String currentPath = widget.setdir;

// // // // // // // //           if (result != null && result.files.isNotEmpty) {
// // // // // // // //             for (var file in result.files) {
// // // // // // // //               File sourceFile = File("${file.path}");
// // // // // // // //               File destinationFile = File('$currentPath/${file.name}');

// // // // // // // //               try {
// // // // // // // //                 await sourceFile.copy(destinationFile.path);
// // // // // // // //                 debugPrint('Copied ${file.name} to $currentPath');
// // // // // // // //               } catch (e) {
// // // // // // // //                 debugPrint('Error copying ${file.name}: $e');
// // // // // // // //               }
// // // // // // // //               _refreshVaultPage();
// // // // // // // //             }
// // // // // // // //           } else {
// // // // // // // //             debugPrint('No files selected.');
// // // // // // // //           }

// // // // // // // void main() {
// // // // // // //   double value = 18766.333;

// // // // // // //   String formattedValue = value.toStringAsFixed(2);

// // // // // // //   print(formattedValue); // Output: 1.33
// // // // // // // }

// // // // // //               // _refreshVaultPage();
// // // // // //               // final file = result.files.first;
// // // // // //               // // ignore: unused_local_variable
// // // // // //               // // File tmp = await
// // // // // //               // saveFile(file);
// // // // // //               // setState(() {
// // // // // //               // _refreshVaultPage();
// // // // // //               // });

// // // // // //                 // String modifiedString = originalString.replaceAll(substringToRemove, '');

// // // // // // import 'package:flutter/material.dart';

// // // // // // void main() {
// // // // // //   runApp(MyApp());
// // // // // // }

// // // // // // class MyApp extends StatelessWidget {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return MaterialApp(
// // // // // //       home: MyHomePage(),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class MyHomePage extends StatelessWidget {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('ListView.builder with TextField'),
// // // // // //       ),
// // // // // //       body: CustomScrollView(
// // // // // //         slivers: <Widget>[
// // // // // //           SliverList(
// // // // // //             delegate: SliverChildListDelegate([
// // // // // //               Padding(
// // // // // //                 padding: const EdgeInsets.all(16.0),
// // // // // //                 child: TextField(
// // // // // //                   decoration: InputDecoration(labelText: 'Search'),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ]),
// // // // // //           ),
// // // // // //           SliverList(
// // // // // //             delegate: SliverChildBuilderDelegate(
// // // // // //               (BuildContext context, int index) {
// // // // // //                 // Use ListView.builder content here
// // // // // //                 return ListTile(title: Text('Item $index'));
// // // // // //               },
// // // // // //               childCount: 10, // Replace with the actual count of items
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';

// // // // // void main() {
// // // // //   runApp(MyApp());
// // // // // }

// // // // // class MyApp extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       home: InstructionPage(),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class InstructionPage extends StatefulWidget {
// // // // //   @override
// // // // //   _InstructionPageState createState() => _InstructionPageState();
// // // // // }

// // // // // class _InstructionPageState extends State<InstructionPage> {
// // // // //   final List<String> images = [
// // // // //      "assets/setpassword.jpg", // Replace with your image asset paths
// // // // //     "assets/calculator.jpg",
// // // // //     "assets/authendication.jpg",
// // // // //     "assets/vault.jpg",
// // // // //   ];

// // // // //   PageController _pageController = PageController(initialPage: 0);

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Image Slider'),
// // // // //       ),
// // // // //       body: PageView.builder(
// // // // //         controller: _pageController,
// // // // //         itemCount: images.length,
// // // // //         itemBuilder: (context, index) {
// // // // //           return Image.asset(
// // // // //             images[index],
// // // // //             fit: BoxFit.cover,
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';

// // // // void main() {
// // // //   runApp(MyApp());
// // // // }

// // // // class MyApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: InstructionPage(),
// // // //     );
// // // //   }
// // // // }

// // // // class InstructionPage extends StatefulWidget {
// // // //   @override
// // // //   _InstructionPageState createState() => _InstructionPageState();
// // // // }

// // // // class _InstructionPageState extends State<InstructionPage> {
// // // //   final List<String> images = [
// // // //      "assets/setpassword.jpg", // Replace with your image asset paths
// // // //     "assets/calculator.jpg",
// // // //     "assets/authendication.jpg",
// // // //     "assets/vault.jpg",
// // // //   ];

// // // //   int _currentImage = 0;
// // // //   PageController _pageController = PageController(initialPage: 0);

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _pageController.addListener(_pageListener);
// // // //   }

// // // //   void _pageListener() {
// // // //     setState(() {
// // // //       _currentImage = _pageController.page?.round() ?? 0;
// // // //     });
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _pageController.removeListener(_pageListener);
// // // //     _pageController.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Image Slider'),
// // // //       ),
// // // //       body: Column(
// // // //         children: [
// // // //           Expanded(
// // // //             child: PageView.builder(
// // // //               controller: _pageController,
// // // //               itemCount: images.length,
// // // //               itemBuilder: (context, index) {
// // // //                 return Image.asset(
// // // //                   images[index],
// // // //                   fit: BoxFit.cover,
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //           Padding(
// // // //             padding: const EdgeInsets.all(16.0),
// // // //             child: Text(
// // // //               'Image ${_currentImage + 1} of ${images.length}',
// // // //               style: TextStyle(fontSize: 18),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_calculator_vault/set_password.dart';
// // // import 'package:shared_preferences/shared_preferences.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: InstructionPage(title: 'Instruction Page',),
// // //     );
// // //   }
// // // }

// // // class InstructionPage extends StatefulWidget {

// // //     const InstructionPage({super.key, required this.title});
// // //   final String title;
// // //   @override
// // //   _InstructionPageState createState() => _InstructionPageState();
// // // }

// // // class _InstructionPageState extends State<InstructionPage> {
// // //   final List<String> images = [
// // //     "assets/setpassword.jpg", // Replace with your image asset paths
// // //     "assets/calculator.jpg",
// // //     "assets/authendication.jpg",
// // //     "assets/vault.jpg",
// // //   ];
// // //   int _currentImage = 0;
// // //   PageController _pageController = PageController(initialPage: 0);
// // //   bool showPage2Content = false;
// // //   String imagetxt = "Set Your Password";

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _pageController.addListener(_pageListener);
// // //   }

// // //   void togglePage2Content() {
// // //     setState(() {
// // //       showPage2Content = !showPage2Content;
// // //     });
// // //   }

// // //   void _pageListener() {
// // //     setState(() {
// // //       _currentImage = _pageController.page?.round() ?? 0;
// // //     });
// // //   }

// // //   void _goToPreviousPage() {
// // //     if (_currentImage > 0) {
// // //       _pageController.previousPage(
// // //         duration: Duration(milliseconds: 300),
// // //         curve: Curves.easeInOut,
// // //       );
// // //     }
// // //   }

// // //   void _goToNextPage() {
// // //     if (_currentImage < images.length - 1) {
// // //       _pageController.nextPage(
// // //         duration: Duration(milliseconds: 300),
// // //         curve: Curves.easeInOut,
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _pageController.removeListener(_pageListener);
// // //     _pageController.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     bool isFirstTime;
// // //     if (showPage2Content) {
// // //       return const SetPassword(title: 'Set Password');
// // //     }
// // //     // ignore: no_leading_underscores_for_local_identifiers
// // //     Future<void> _setFirstTimeFlag() async {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setBool('first_time', false);
// // //     }

// // //     _setFirstTimeFlag(); // Store flag when visiting first page

// // //     return Scaffold(
// // //       backgroundColor: const Color.fromARGB(255, 3, 2, 2),
// // //       appBar: AppBar(
// // //         title: Text('Image Slider'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Expanded(
// // //             child: PageView.builder(
// // //               controller: _pageController,
// // //               itemCount: images.length,
// // //               itemBuilder: (context, index) {
// // //                 return Image.asset(
// // //                   images[index],
// // //                   // fit: BoxFit.cover,
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //           Row(
// // //             children: [
// // //               Expanded(
// // //                 child: Container(
// // //                   margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
// // //                   height: 50,
// // //                   child: Center(
// // //                     child: Text(
// // //                       imagetxt,
// // //                       style: const TextStyle(
// // //                           fontSize: 20,
// // //                           color: Color.fromARGB(255, 251, 249, 249)),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(16.0),
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 IconButton(
// // //                   color: Colors.white,
// // //                   icon: Icon(Icons.arrow_back),
// // //                   onPressed: _goToPreviousPage,
// // //                   disabledColor: Colors.grey,
// // //                 ),
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.center,
// // //                   children: [
// // //                     for (int j = 1; j < _currentImage + 1; j++)
// // //                       Container(
// // //                         margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                         child: const Icon(
// // //                           size: 10,
// // //                           color: Colors.white,
// // //                           Icons.circle_outlined,
// // //                         ),
// // //                       ),
// // //                     Container(
// // //                       margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                       child: const Icon(
// // //                         size: 10,
// // //                         color: Colors.white,
// // //                         Icons.circle,
// // //                       ),
// // //                     ),
// // //                     for (int i = _currentImage + 1; i < images.length; i++)
// // //                       Container(
// // //                         margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                         child: const Icon(
// // //                           size: 10,
// // //                           color: Colors.white,
// // //                           Icons.circle_outlined,
// // //                         ),
// // //                       ),
// // //                   ],
// // //                 ),
// // //                 if (_currentImage + 1 < images.length)
// // //                   IconButton(
// // //                     color: Colors.white,
// // //                     icon: Icon(Icons.arrow_forward),
// // //                     onPressed: _goToNextPage,
// // //                     disabledColor: Colors.grey,
// // //                   ),
// // //                 if (_currentImage + 1 == images.length)
// // //                   Container(
// // //                     width: 100,
// // //                     height: 50,
// // //                     margin: const EdgeInsets.all(8.0),
// // //                     child: TextButton(
// // //                         style: const ButtonStyle(
// // //                           backgroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 244, 240, 240)),
// // //                           foregroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 11, 10, 10)),
// // //                         ),
// // //                         onPressed: togglePage2Content,
// // //                         // () {
// // //                         //   Navigator.push(
// // //                         //       context,
// // //                         //       MaterialPageRoute(
// // //                         //           builder: (context) => const SetPassword(
// // //                         //                 title: 'Set Password',
// // //                         //               )));
// // //                         // },
// // //                         child: const Text(
// // //                           "Done",
// // //                           style: TextStyle(fontSize: 20),
// // //                         )),
// // //                   ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }





// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_calculator_vault/calculator_page.dart';
// // // import 'package:flutter_calculator_vault/set_password.dart';
// // // import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'calculator_page.dart';
// // // // import 'package:math_expressions/math_expressions.dart';

// // // class InstructionPage extends StatefulWidget {
// // //   const InstructionPage({super.key, required this.title});
// // //   final String title;

// // //   @override
// // //   State<InstructionPage> createState() => _InstructionPageState();
// // // }

// // // class _InstructionPageState extends State<InstructionPage> {
// // //     final List<String> images = [
// // //      "assets/setpassword.jpg", // Replace with your image asset paths
// // //     "assets/calculator.jpg",
// // //     "assets/authendication.jpg",
// // //     "assets/vault.jpg",
// // //   ];
// // //   PageController _pageController = PageController(initialPage: 0);
// // //     @override
// // //   void initState() {
// // //     super.initState();
// // //     _pageController.addListener(_pageListener);
// // //   }

// // //   void _pageListener() {
// // //     setState(() {
// // //       _currentImage = _pageController.page?.round() ?? 0;
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _pageController.removeListener(_pageListener);
// // //     _pageController.dispose();
// // //     super.dispose();
// // //   }
// // // ////////////////////////////////////////////////////////////
// // //   TextEditingController textEditingController = TextEditingController();
// // //   String _imagepath = "assets/setpassword.jpg";
// // //   int _currentImage = 0;
// // //   String imagetxt = "Set Your Password";
// // //   int totalimages = 4;
// // //   var allignbutton = MainAxisAlignment.end;
// // //   bool showPage2Content = false;

// // //   void togglePage2Content() {
// // //     setState(() {
// // //       showPage2Content = !showPage2Content;
// // //     });
// // //   }

// // //   void backimage() {
// // //     setState(() {
// // //       _currentImage--;
// // //       if (_currentImage == 1) allignbutton = MainAxisAlignment.end;
// // //       if (_currentImage == 1) {
// // //         imagetxt = "Set Your Password";
// // //         _imagepath = "assets/setpassword.jpg";
// // //       }

// // //       if (_currentImage == 2) {
// // //         imagetxt = "To open your Vault Long Press on 0";
// // //         _imagepath = "assets/calculator.jpg";
// // //       }
// // //       if (_currentImage == 3) {
// // //         imagetxt = "Enter Your Password";
// // //         _imagepath = "assets/authendication.jpg";
// // //       }
// // //       if (_currentImage == 4) {
// // //         imagetxt = "Now Your Vault is Opend";
// // //         _imagepath = "assets/vault.jpg";
// // //       }
// // //     });
// // //   }

// // //   void nextimage() {
// // //     setState(() {
// // //       if (_currentImage < totalimages) _currentImage++;
// // //       allignbutton = MainAxisAlignment.spaceBetween;
// // //       if (_currentImage == 2) {
// // //         imagetxt = "To open your Vault Long Press on 0";
// // //         _imagepath = "assets/calculator.jpg";
// // //       }
// // //       if (_currentImage == 3) {
// // //         imagetxt = "Enter Your Password";
// // //         _imagepath = "assets/authendication.jpg";
// // //       }
// // //       if (_currentImage == 4) {
// // //         imagetxt = "Now Your Vault is Opend";
// // //         _imagepath = "assets/vault.jpg";
// // //       }
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     bool isFirstTime;
// // //     if (showPage2Content) {
// // //       return const SetPassword(title: 'Set Password');
// // //     }
// // //     // ignore: no_leading_underscores_for_local_identifiers
// // //     Future<void> _setFirstTimeFlag() async {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setBool('first_time', false);
// // //     }

// // //     _setFirstTimeFlag(); // Store flag when visiting first page

// // //     return Scaffold(
// // //       backgroundColor: const Color.fromARGB(255, 3, 2, 2),
// // //       appBar: AppBar(
// // //         title: Text(widget.title),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.end,
// // //           children: [
// // //             Expanded(
// // //               child: PageView.builder(
// // //               controller: _pageController,
// // //               itemCount: images.length,
// // //               itemBuilder: (context, index) {
// // //                 return Image.asset(
// // //                   images[index],
// // //                   // fit: BoxFit.cover,
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //             Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
// // //                     height: 50,
// // //                     child: Center(
// // //                       child: Text(
// // //                         imagetxt,
// // //                         style: const TextStyle(
// // //                             fontSize: 20,
// // //                             color: Color.fromARGB(255, 251, 249, 249)),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 for (int j = 1; j < _currentImage+1; j++)
// // //                   Container(
// // //                     margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                     child: const Icon(
// // //                       size: 10,
// // //                       color: Colors.white,
// // //                       Icons.circle_outlined,
// // //                     ),
// // //                   ),
// // //                 Container(
// // //                   margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                   child: const Icon(
// // //                     size: 10,
// // //                     color: Colors.white,
// // //                     Icons.circle,
// // //                   ),
// // //                 ),
// // //                 for (int i = _currentImage+1; i < totalimages; i++)
// // //                   Container(
// // //                     margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
// // //                     child: const Icon(
// // //                       size: 10,
// // //                       color: Colors.white,
// // //                       Icons.circle_outlined,
// // //                     ),
// // //                   ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: allignbutton,
// // //               children: [
// // //                 if (_currentImage+1 != 1)
// // //                   Container(
// // //                     width: 100,
// // //                     height: 50,
// // //                     margin: const EdgeInsets.all(8.0),
// // //                     child: TextButton(
// // //                         style: const ButtonStyle(
// // //                           backgroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 241, 237, 237)),
// // //                           foregroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 8, 7, 7)),
// // //                         ),
// // //                         onPressed: backimage,
// // //                         child: const Text(
// // //                           "Previous",
// // //                           style: TextStyle(fontSize: 20),
// // //                         )),
// // //                   ),
// // //                 if (_currentImage+1 < totalimages)
// // //                   Container(
// // //                     width: 100,
// // //                     height: 50,
// // //                     margin: const EdgeInsets.all(8.0),
// // //                     child: TextButton(
// // //                         style: const ButtonStyle(
// // //                           backgroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 244, 240, 240)),
// // //                           foregroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 11, 10, 10)),
// // //                         ),
// // //                         onPressed: (){},
// // //                         child: const Text(
// // //                           "Next",
// // //                           style: TextStyle(fontSize: 20),
// // //                         )),
// // //                   ),
// // //                 if (_currentImage+1 == totalimages)
// // //                   Container(
// // //                     width: 100,
// // //                     height: 50,
// // //                     margin: const EdgeInsets.all(8.0),
// // //                     child: TextButton(
// // //                         style: const ButtonStyle(
// // //                           backgroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 244, 240, 240)),
// // //                           foregroundColor: MaterialStatePropertyAll(
// // //                               Color.fromARGB(255, 11, 10, 10)),
// // //                         ),
// // //                         onPressed: togglePage2Content,
// // //                         // () {
// // //                         //   Navigator.push(
// // //                         //       context,
// // //                         //       MaterialPageRoute(
// // //                         //           builder: (context) => const SetPassword(
// // //                         //                 title: 'Set Password',
// // //                         //               )));
// // //                         // },
// // //                         child: const Text(
// // //                           "Done",
// // //                           style: TextStyle(fontSize: 20),
// // //                         )),
// // //                   ),
// // //               ],
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }



















// // //calculator_page
// // import 'package:flutter/material.dart';
// // import 'package:math_expressions/math_expressions.dart';
// // import 'package:flutter_calculator_vault/authendication_page.dart';

// // class CalculatorPage extends StatefulWidget {
// //   const CalculatorPage({super.key, required this.title});
// //   final String title;

// //   @override
// //   State<CalculatorPage> createState() => _CalculatorPageState();
// // }

// // class _CalculatorPageState extends State<CalculatorPage> {
// //   TextEditingController textEditingController = TextEditingController();
// //   String exp = "";
// //   double bmargin = 5;
// //   double bsize = 85;
// //   double bheight = 60;
// //   bool showPage2Content = false;

// //   void togglePage2Content() {
// //     setState(() {
// //       showPage2Content = !showPage2Content;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // double screenWidth = MediaQuery.of(context).size.width;
// //     // double containerWidth = screenWidth * 0.8; // 80% of the screen width
// //     if (showPage2Content) {
// //       return const AuthendicationPage(title: 'Enter Your Password');
// //     }

// //     double bsize = 85;

// //     final textFieldBorder = OutlineInputBorder(
// //       borderSide: const BorderSide(
// //         style: BorderStyle.solid,
// //       ),
// //       borderRadius: BorderRadius.circular(0),
// //     );

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //       ),
// //       backgroundColor: const Color.fromARGB(255, 39, 38, 38),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.end,
// //           children: <Widget>[
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
// //                     decoration: BoxDecoration(
// //                       color: Color.fromARGB(255, 146, 144, 143),
// //                       borderRadius: BorderRadius.circular(5),
// //                     ),
// //                     padding: const EdgeInsets.all(8),
// //                     height: 50,
// //                     // width: 370,
// //                     child: Text(
// //                       exp,
// //                       style: const TextStyle(
// //                         color: Colors.white,
// //                         fontSize: 30,
// //                       ),
// //                       textAlign: TextAlign.end,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       color: const Color.fromRGBO(255, 255, 255, 1),
// //                       borderRadius: BorderRadius.circular(5),
// //                     ),
// //                     margin: const EdgeInsets.all(8),
// //                     height: 50,
// //                     // width: 370,
// //                     child: TextField(
// //                       readOnly: true,
// //                       style: const TextStyle(
// //                         color: Colors.black,
// //                         fontSize: 30,
// //                       ),
// //                       decoration: InputDecoration(
// //                         hintText: textEditingController.text,
// //                         hintStyle: const TextStyle(
// //                           color: Colors.black,
// //                           fontSize: 30,
// //                         ),
// //                         prefixIcon: IconButton(
// //                           icon: const Icon(Icons.clear),
// //                           onPressed: () {
// //                             setState(() {
// //                               textEditingController.text = "";
// //                               exp = "";
// //                             });
// //                           },
// //                         ),
// //                         enabledBorder: textFieldBorder,
// //                         focusedBorder: textFieldBorder,
// //                       ),
// //                       controller: textEditingController,
// //                       textAlign: TextAlign.end,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton.icon(
// //                       icon: Icon(Icons.backspace_sharp),
// //                       label: Text(""),
// //                       onPressed: () {
// //                         setState(() {
// //                           if (textEditingController.text.isNotEmpty) {
// //                             textEditingController.text =
// //                                 textEditingController.text.substring(
// //                                     0, textEditingController.text.length - 1);
// //                           }
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}(";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "(",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           setState(() {
// //                             textEditingController.text =
// //                                 "${textEditingController.text})";
// //                           });
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         ")",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           exp = textEditingController.text;
// //                           try {
// //                             Parser parser = Parser();
// //                             Expression expression = parser.parse(exp);
// //                             ContextModel contextModel = ContextModel();
// //                             textEditingController.text = expression
// //                                 .evaluate(EvaluationType.REAL, contextModel)
// //                                 .toString();
// //                           } catch (e) {
// //                             debugPrint("Error : $e");
// //                           }
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "=",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}7";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "7",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}8";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "8",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}9";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "9",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}+";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "+",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}4";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "4",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}5";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "5",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}6";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "6",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}-";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "-",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}1";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "1",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}2";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "2",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}3";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "3",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}*";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "x",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}0";
// //                         });
// //                       },
// //                       onLongPress:  togglePage2Content,
// //                       //() {
// //                       //   Navigator.push(
// //                       //       context,
// //                       //       MaterialPageRoute(
// //                       //           builder: (context) => AuthendicationPage(
// //                       //                 title: 'Authendication Needed',
// //                       //               )));
// //                       // },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "0",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}.";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         ".",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}%";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor: MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor: MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "%",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     margin: EdgeInsets.all(bmargin),
// //                     child: TextButton(
// //                       onPressed: () {
// //                         setState(() {
// //                           textEditingController.text =
// //                               "${textEditingController.text}/";
// //                         });
// //                       },
// //                       style: ButtonStyle(
// //                         backgroundColor:
// //                             const MaterialStatePropertyAll(Colors.white),
// //                         foregroundColor:
// //                             const MaterialStatePropertyAll(Colors.black),
// //                         minimumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                         maximumSize:
// //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// //                       ),
// //                       child: const Text(
// //                         "/",
// //                         style: TextStyle(fontSize: 33),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //       // floatingActionButton: FloatingActionButton(
// //       //   onPressed: _incrementCounter,
// //       //   child: const Icon(Icons.add),
// //       // ), //s trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }





// /////new calculator_page
// //
// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';
// import 'package:flutter_calculator_vault/authendication_page.dart';

// class CalculatorPage extends StatefulWidget {
//   const CalculatorPage({super.key, required this.title});
//   final String title;

//   @override
//   State<CalculatorPage> createState() => _CalculatorPageState();
// }

// class _CalculatorPageState extends State<CalculatorPage> {
//   TextEditingController textEditingController = TextEditingController();
//   String exp = "";
//   double bmargin = 5;
//   double bsize = 85;
//   double bheight = 60;
//   bool showPage2Content = false;

//   void togglePage2Content() {
//     setState(() {
//       showPage2Content = !showPage2Content;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // double screenWidth = MediaQuery.of(context).size.width;
//     // double containerWidth = screenWidth * 0.8; // 80% of the screen width
//     if (showPage2Content) {
//       return const AuthendicationPage(title: 'Enter Your Password');
//     }

//     double bsize = 85;

//     final textFieldBorder = OutlineInputBorder(
//       borderSide: const BorderSide(
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.circular(0),
//     );
//     final threeDButton = BoxDecoration(
//       borderRadius: BorderRadius.circular(8),
//       gradient: LinearGradient(
//         colors: [
//           Color.fromARGB(255, 201, 208, 201),
//           Color.fromARGB(255, 139, 143, 139)
//         ],
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//       ),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.3),
//           blurRadius: 5.0,
//           offset: Offset(0, 3),
//         ),
//       ],
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       backgroundColor: Color.fromARGB(255, 97, 96, 96),
//       // backgroundColor: Color.fromARGB(255, 73, 72, 72),
//       body: Container(
//         decoration: threeDButton,
//         // margin: EdgeInsets.fromLTRB(5, 5, 15, 15),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 115, 147, 102),
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     padding: const EdgeInsets.all(8),
//                     height: 50,
//                     // width: 370,
//                     child: Text(
//                       exp,
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 30,
//                       ),
//                       textAlign: TextAlign.end,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 115, 147, 102),
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     margin: const EdgeInsets.all(8),
//                     height: 50,
//                     // width: 370,
//                     child: TextField(
//                       textAlignVertical: TextAlignVertical.bottom,
//                       readOnly: true,
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 30,
//                       ),
//                       decoration: InputDecoration(
//                         hintText: textEditingController.text,
//                         hintStyle: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 30,
//                         ),
//                         prefixIcon: IconButton(
//                           icon: const Icon(Icons.clear),
//                           onPressed: () {
//                             setState(() {
//                               textEditingController.text = "";
//                               exp = "";
//                             });
//                           },
//                         ),
//                         enabledBorder: textFieldBorder,
//                         focusedBorder: textFieldBorder,
//                       ),
//                       controller: textEditingController,
//                       textAlign: TextAlign.end,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton.icon(
//                       icon: Icon(Icons.backspace_sharp,
//                           color: Color.fromARGB(255, 245, 241, 241)),
//                       label: Text(""),
//                       onPressed: () {
//                         setState(() {
//                           if (textEditingController.text.isNotEmpty) {
//                             textEditingController.text =
//                                 textEditingController.text.substring(
//                                     0, textEditingController.text.length - 1);
//                           }
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}(";
//                         });
//                       },
//                       // style: ButtonStyle(
//                       //   backgroundColor: MaterialStatePropertyAll(Colors.white),
//                       //   foregroundColor: MaterialStatePropertyAll(Colors.black),
//                       //   minimumSize:
//                       //       MaterialStatePropertyAll(Size(bsize, bheight)),
//                       //   maximumSize:
//                       //       MaterialStatePropertyAll(Size(bsize, bheight)),
//                       // ),
//                       child: const Text(
//                         "(",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           setState(() {
//                             textEditingController.text =
//                                 "${textEditingController.text})";
//                           });
//                         });
//                       },
//                       child: const Text(
//                         ")",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}+";
//                         });
//                       },
//                       child: const Text(
//                         "+",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}7";
//                         });
//                       },
//                       child: const Text(
//                         "7",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}8";
//                         });
//                       },
//                       child: const Text(
//                         "8",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}9";
//                         });
//                       },
//                       child: const Text(
//                         "9",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}-";
//                         });
//                       },
//                       child: const Text(
//                         "-",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}4";
//                         });
//                       },
//                       child: const Text(
//                         "4",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}5";
//                         });
//                       },
//                       child: const Text(
//                         "5",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}6";
//                         });
//                       },
//                       child: const Text(
//                         "6",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}*";
//                         });
//                       },
//                       child: const Text(
//                         "x",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}1";
//                         });
//                       },
//                       child: const Text(
//                         "1",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}2";
//                         });
//                       },
//                       child: const Text(
//                         "2",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}3";
//                         });
//                       },
//                       child: const Text(
//                         "3",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}/";
//                         });
//                       },
//                       child: const Text(
//                         "/",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}0";
//                         });
//                       },
//                       onLongPress: togglePage2Content,
//                       //() {
//                       //   Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //           builder: (context) => AuthendicationPage(
//                       //                 title: 'Authendication Needed',
//                       //               )));
//                       // },

//                       child: const Text(
//                         "0",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}.";
//                         });
//                       },
//                       child: const Text(
//                         ".",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: threeDButton,
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           textEditingController.text =
//                               "${textEditingController.text}%";
//                         });
//                       },
//                       child: const Text(
//                         "%",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8.0),
//                       gradient: const LinearGradient(
//                         colors: [
//                           Color.fromARGB(244, 237, 111, 80),
//                           Color.fromARGB(244, 255, 51, 0),
//                         ],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 5.0,
//                           offset: Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     margin: EdgeInsets.all(bmargin),
//                     child: TextButton(
//                       onPressed: () {
//                         setState(() {
//                           exp = textEditingController.text;
//                           try {
//                             Parser parser = Parser();
//                             Expression expression = parser.parse(exp);
//                             ContextModel contextModel = ContextModel();
//                             textEditingController.text = expression
//                                 .evaluate(EvaluationType.REAL, contextModel)
//                                 .toString();
//                           } catch (e) {
//                             debugPrint("Error : $e");
//                           }
//                         });
//                       },
//                       child: const Text(
//                         "=",
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: Color.fromARGB(255, 245, 241, 241)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   child: const Icon(Icons.add),
//       // ), //s trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
