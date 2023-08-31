// import 'package:flutter/material.dart';
// import 'package:flutter_calculator_vault/calculator_page.dart';
// import 'package:flutter_calculator_vault/set_password.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// // import 'calculator_page.dart';
// // import 'package:math_expressions/math_expressions.dart';

// class InstructionPage extends StatefulWidget {
//   const InstructionPage({super.key, required this.title});
//   final String title;

//   @override
//   State<InstructionPage> createState() => _InstructionPageState();
// }

// class _InstructionPageState extends State<InstructionPage> {
//     final List<String> images = [
//      "assets/setpassword.jpg", // Replace with your image asset paths
//     "assets/calculator.jpg",
//     "assets/authendication.jpg",
//     "assets/vault.jpg",
//   ];
//   PageController _pageController = PageController(initialPage: 0);
//     @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(_pageListener);
//   }

//   void _pageListener() {
//     setState(() {
//       _currentImage = _pageController.page?.round() ?? 0;
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.removeListener(_pageListener);
//     _pageController.dispose();
//     super.dispose();
//   }
// ////////////////////////////////////////////////////////////
//   TextEditingController textEditingController = TextEditingController();
//   String _imagepath = "assets/setpassword.jpg";
//   int _currentImage = 1;
//   String imagetxt = "Set Your Password";
//   int totalimages = 4;
//   var allignbutton = MainAxisAlignment.end;
//   bool showPage2Content = false;

//   void togglePage2Content() {
//     setState(() {
//       showPage2Content = !showPage2Content;
//     });
//   }

//   void backimage() {
//     setState(() {
//       _currentImage--;
//       if (_currentImage == 1) allignbutton = MainAxisAlignment.end;
//       if (_currentImage == 1) {
//         imagetxt = "Set Your Password";
//         _imagepath = "assets/setpassword.jpg";
//       }

//       if (_currentImage == 2) {
//         imagetxt = "To open your Vault Long Press on 0";
//         _imagepath = "assets/calculator.jpg";
//       }
//       if (_currentImage == 3) {
//         imagetxt = "Enter Your Password";
//         _imagepath = "assets/authendication.jpg";
//       }
//       if (_currentImage == 4) {
//         imagetxt = "Now Your Vault is Opend";
//         _imagepath = "assets/vault.jpg";
//       }
//     });
//   }

//   void nextimage() {
//     setState(() {
//       if (_currentImage < totalimages) _currentImage++;
//       allignbutton = MainAxisAlignment.spaceBetween;
//       if (_currentImage == 2) {
//         imagetxt = "To open your Vault Long Press on 0";
//         _imagepath = "assets/calculator.jpg";
//       }
//       if (_currentImage == 3) {
//         imagetxt = "Enter Your Password";
//         _imagepath = "assets/authendication.jpg";
//       }
//       if (_currentImage == 4) {
//         imagetxt = "Now Your Vault is Opend";
//         _imagepath = "assets/vault.jpg";
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool isFirstTime;
//     if (showPage2Content) {
//       return const SetPassword(title: 'Set Password');
//     }
//     // ignore: no_leading_underscores_for_local_identifiers
//     Future<void> _setFirstTimeFlag() async {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setBool('first_time', false);
//     }

//     _setFirstTimeFlag(); // Store flag when visiting first page


//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 3, 2, 2),
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Expanded(
//               child: Image.asset(
//                 _imagepath,
//                 height: 500,
//                 width: 500,
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
//                     height: 50,
//                     child: Center(
//                       child: Text(
//                         imagetxt,
//                         style: const TextStyle(
//                             fontSize: 20,
//                             color: Color.fromARGB(255, 251, 249, 249)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 for (int j = 1; j < _currentImage; j++)
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
//                     child: const Icon(
//                       size: 10,
//                       color: Colors.white,
//                       Icons.circle_outlined,
//                     ),
//                   ),
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
//                   child: const Icon(
//                     size: 10,
//                     color: Colors.white,
//                     Icons.circle,
//                   ),
//                 ),
//                 for (int i = _currentImage; i < totalimages; i++)
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
//                     child: const Icon(
//                       size: 10,
//                       color: Colors.white,
//                       Icons.circle_outlined,
//                     ),
//                   ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: allignbutton,
//               children: [
//                 if (_currentImage != 1)
//                   Container(
//                     width: 100,
//                     height: 50,
//                     margin: const EdgeInsets.all(8.0),
//                     child: TextButton(
//                         style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 241, 237, 237)),
//                           foregroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 8, 7, 7)),
//                         ),
//                         onPressed: backimage,
//                         child: const Text(
//                           "Previous",
//                           style: TextStyle(fontSize: 20),
//                         )),
//                   ),
//                 if (_currentImage < totalimages)
//                   Container(
//                     width: 100,
//                     height: 50,
//                     margin: const EdgeInsets.all(8.0),
//                     child: TextButton(
//                         style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 244, 240, 240)),
//                           foregroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 11, 10, 10)),
//                         ),
//                         onPressed: nextimage,
//                         child: const Text(
//                           "Next",
//                           style: TextStyle(fontSize: 20),
//                         )),
//                   ),
//                 if (_currentImage == totalimages)
//                   Container(
//                     width: 100,
//                     height: 50,
//                     margin: const EdgeInsets.all(8.0),
//                     child: TextButton(
//                         style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 244, 240, 240)),
//                           foregroundColor: MaterialStatePropertyAll(
//                               Color.fromARGB(255, 11, 10, 10)),
//                         ),
//                         onPressed: togglePage2Content,
//                         // () {
//                         //   Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //           builder: (context) => const SetPassword(
//                         //                 title: 'Set Password',
//                         //               )));
//                         // },
//                         child: const Text(
//                           "Done",
//                           style: TextStyle(fontSize: 20),
//                         )),
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
