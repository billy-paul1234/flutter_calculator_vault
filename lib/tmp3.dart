// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// // // import 'package:math_expressions/math_expressions.dart';
// // // import 'package:path_provider/path_provider.dart';
// // // import 'calculator_page.dart';
// // // import 'vault_page.dart';

// // // class AuthendicationPage extends StatefulWidget {
// // //   const AuthendicationPage({super.key, required this.title});
// // //   final String title;

// // //   @override
// // //   State<AuthendicationPage> createState() => _AuthendicationPageState();
// // // }

// // // class _AuthendicationPageState extends State<AuthendicationPage> {
// // //   TextEditingController textEditingController = TextEditingController();
// // //   String exp = "";
// // //   double bmargin = 5;
// // //   double bsize = 85;
// // //   double bheight = 60;
// // //   bool showcalculatorPage = false;
// // //   bool showVaultPage = false;
// // //   var appStorage;

// // //   void _showcalculatorPage() {
// // //     setState(() {
// // //       showcalculatorPage = !showcalculatorPage;
// // //     });
// // //   }

// // //   void _showVaultPage() {
// // //     setState(() async {
// // //       showVaultPage = !showVaultPage;
// // //       appStorage = await getApplicationDocumentsDirectory();
// // //     });
// // //   }

// // //   Future<bool> authenticate(String inputPassword) async {
// // //     const secureStorage = FlutterSecureStorage();
// // //     var storedPassword = await secureStorage.read(key: 'password');
// // //     debugPrint(storedPassword);
// // //     return storedPassword == inputPassword;
// // //   }

// // //   // void toVaultPage() async {}

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // double screenWidth = MediaQuery.of(context).size.width;
// // //     // double containerWidth = screenWidth * 0.8; // 80% of the screen width
// // //     if (showcalculatorPage) return const CalculatorPage(title: 'Calculator');

// // //     if (showVaultPage) {
// // //       return VaultPage(title: 'Vault Page', setdir: "${appStorage.path}/MySecretFolder", itemToMoveAndCopy: [],);
// // //       // return VaultPage(title: 'Vault Page', setdir: '/storage/emulated/0');
// // //     }

// // //     double bsize = 85;

// // //     final textFieldBorder = OutlineInputBorder(
// // //       borderSide: const BorderSide(
// // //         style: BorderStyle.solid,
// // //       ),
// // //       borderRadius: BorderRadius.circular(0),
// // //     );

// // //     // ignore: dead_code
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text(widget.title),
// // //       ),
// // //       backgroundColor: const Color.fromARGB(255, 39, 38, 38),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.end,
// // //           children: <Widget>[
// // //             Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
// // //                     decoration: BoxDecoration(
// // //                       color: const Color.fromARGB(255, 146, 144, 143),
// // //                       borderRadius: BorderRadius.circular(5),
// // //                     ),
// // //                     padding: const EdgeInsets.all(8),
// // //                     height: 50,
// // //                     // width: 370,
// // //                     child: Text(
// // //                       exp,
// // //                       style: const TextStyle(
// // //                         color: Colors.white,
// // //                         fontSize: 30,
// // //                       ),
// // //                       textAlign: TextAlign.end,
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     decoration: BoxDecoration(
// // //                       color: const Color.fromRGBO(255, 255, 255, 1),
// // //                       borderRadius: BorderRadius.circular(5),
// // //                     ),
// // //                     margin: const EdgeInsets.all(8),
// // //                     height: 50,
// // //                     // width: 370,
// // //                     child: TextField(
// // //                       readOnly: true,
// // //                       style: const TextStyle(
// // //                         color: Colors.black,
// // //                         fontSize: 30,
// // //                       ),
// // //                       decoration: InputDecoration(
// // //                         hintText: textEditingController.text,
// // //                         hintStyle: const TextStyle(
// // //                           color: Colors.black,
// // //                           fontSize: 30,
// // //                         ),
// // //                         prefixIcon: IconButton(
// // //                           icon: const Icon(Icons.clear),
// // //                           onPressed: () {
// // //                             setState(() {
// // //                               textEditingController.text = "";
// // //                               exp = "";
// // //                             });
// // //                           },
// // //                         ),
// // //                         enabledBorder: textFieldBorder,
// // //                         focusedBorder: textFieldBorder,
// // //                       ),
// // //                       controller: textEditingController,
// // //                       textAlign: TextAlign.end,
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton.icon(
// // //                       icon: const Icon(Icons.backspace_sharp),
// // //                       label: const Text(""),
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           if (textEditingController.text.isNotEmpty) {
// // //                             textEditingController.text =
// // //                                 textEditingController.text.substring(
// // //                                     0, textEditingController.text.length - 1);
// // //                           }
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}(";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "(",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           setState(() {
// // //                             textEditingController.text =
// // //                                 "${textEditingController.text})";
// // //                           });
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         ")",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () async {
// // //                         String inputPassword = textEditingController.text;
// // //                         bool isAuthenticated =
// // //                             await authenticate(inputPassword);
// // //                         debugPrint('isAuthenticated: $isAuthenticated as');
// // //                         if (isAuthenticated) {
// // //                           textEditingController.text = "";
// // //                           exp = textEditingController.text;
// // //                           _showVaultPage();
// // //                           return ; 

// // //                           // ignore: use_build_context_synchronously
// // //                           // Navigator.push(
// // //                           //     context,
// // //                           //     MaterialPageRoute(
// // //                           //         builder: (context) => VaultPage(
// // //                           //               title: 'Vault Opend', setdir: appStorage.path,
// // //                           //             )));
// // //                         }
// // //                         setState(() {
// // //                           exp = textEditingController.text;
// // //                           try {
// // //                             Parser parser = Parser();
// // //                             Expression expression = parser.parse(exp);
// // //                             ContextModel contextModel = ContextModel();
// // //                             textEditingController.text = expression
// // //                                 .evaluate(EvaluationType.REAL, contextModel)
// // //                                 .toString();
// // //                           } catch (e) {
// // //                             debugPrint("Error : $e");
// // //                           }
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "=",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}7";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "7",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}8";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "8",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}9";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "9",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}+";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "+",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}4";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "4",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}5";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "5",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}6";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "6",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}-";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "-",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}1";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "1",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}2";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "2",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}3";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "3",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}*";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "x",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}0";
// // //                         });
// // //                       },
// // //                       onLongPress: _showcalculatorPage,
// // //                       // () {
// // //                       //   Navigator.push(
// // //                       //       context,
// // //                       //       MaterialPageRoute(
// // //                       //           builder: (context) => const AuthendicationPage(
// // //                       //                 title: 'Authendication Needed',
// // //                       //               )));
// // //                       // },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "0",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}.";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         ".",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}%";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "%",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(bmargin),
// // //                     child: TextButton(
// // //                       onPressed: () {
// // //                         setState(() {
// // //                           textEditingController.text =
// // //                               "${textEditingController.text}/";
// // //                         });
// // //                       },
// // //                       style: ButtonStyle(
// // //                         backgroundColor:
// // //                             const MaterialStatePropertyAll(Colors.white),
// // //                         foregroundColor:
// // //                             const MaterialStatePropertyAll(Colors.black),
// // //                         minimumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                         maximumSize:
// // //                             MaterialStatePropertyAll(Size(bsize, bheight)),
// // //                       ),
// // //                       child: const Text(
// // //                         "/",
// // //                         style: TextStyle(fontSize: 33),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }





// // import 'dart:io';
// // import 'package:file_picker/file_picker.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_calculator_vault/calculator_page.dart';
// // import 'package:open_file/open_file.dart';
// // // ignore: unused_import
// // import 'package:path_provider/path_provider.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:file_selector/file_selector.dart';
// // // import 'package:permission_handler/permission_handler.dart';
// // // import 'package:math_expressions/math_expressions.dart';

// // // Future<void> main() async {

// // //   runApp(VaultPage(setdir: '/storage/emulated/0/', title: 'Vault Page',));
// // // }

// // // ignore: must_be_immutable
// // class VaultPage extends StatefulWidget {
// //   final String title;
// //   String setdir;
// //   List<FileSystemEntity> itemToMoveAndCopy;
// //   String? copyOrMove;
// //   // ignore: non_constant_identifier_names
// //   VaultPage(
// //       {super.key,
// //       required this.title,
// //       required this.setdir,
// //       required this.itemToMoveAndCopy,
// //       this.copyOrMove});

// //   @override
// //   State<VaultPage> createState() => _VaultPageState();
// // }

// // class _VaultPageState extends State<VaultPage> {
// //   TextEditingController textEditingController = TextEditingController();
// //   List<FileSystemEntity> _filesAndFolders = [];
// //   int changeFolder = 0;
// //   bool refreshVaultPage = false;
// //   bool goToCalculator = false;
// //   var appStorage;
// //   List<FileSystemEntity> selectedItems = [];
// //   List<FileSystemEntity> itemToMoveAndCopy = [];
// //   String currentPath = '';
// //   String copyOrMove = "";
// //   bool _isMovedOrCopied = true;
// //      isMovedOrCopied() async {
// //     WidgetsFlutterBinding.ensureInitialized();
// //     final prefs = await SharedPreferences.getInstance();
// //     bool ismovedOrCopied = prefs.getBool('movedOrCopied') ?? false;
// //     return ismovedOrCopied;
// //   }
// //     Future<void> movedOrCopied() async {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.setBool('movedOrCopied', true);
// //     }  
    
// //   @override
// //   void initState() {
// //     super.initState();
// //     _loadFilesAndFolders();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     var tmp = isMovedOrCopied();
// //     if(_isMovedOrCopied && tmp ) {
// //       _isMovedOrCopied=false;
// //       _refreshVaultPage();
// //     }

    
// //       currentPath = widget.setdir;
// //     copyOrMove =
// //         ((widget.copyOrMove == 'copy' || copyOrMove == 'copy') ? 'copy' : "");
// //     if (widget.itemToMoveAndCopy.isNotEmpty)
// //       itemToMoveAndCopy = widget.itemToMoveAndCopy;
// //     // if (widget.copyOrMove != null && widget.copyOrMove!.isNotEmpty) {
// //     //   copyOrMove = widget.copyOrMove!;
// //     // }
// //     // if(widget.copyOrMove!.isNotEmpty) copyOrMove = widget.copyOrMove!;

// //     if (refreshVaultPage) {
// //       return VaultPage(
// //         title: 'Vault Page',
// //         setdir: widget.setdir,
// //         itemToMoveAndCopy: const [],
// //       );
// //     }
// //     if (goToCalculator) {
// //       return const CalculatorPage(
// //         title: 'Calculator Page',
// //       );
// //     }
// //     debugPrint('Selected items bool: ${selectedItems.isEmpty}');
// //     debugPrint('itemsToMoveAndCopy bool: ${itemToMoveAndCopy.isEmpty}');
// //     debugPrint('widget.copyOrMove bool: ${widget.copyOrMove}');
// //     debugPrint('copyOrMove bool: $copyOrMove');

// //     // if (selectedItems.isNotEmpty)
// //     for (var i in selectedItems) debugPrint('Selected items: ${i.path}');
// //     for (var i in itemToMoveAndCopy)
// //       debugPrint('itemsToMoveAndCopy: ${i.path}');

// //     return Scaffold(
// //       backgroundColor: const Color.fromARGB(255, 97, 96, 96),
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //         actions: [
// //           PopupMenuButton<String>(
// //             onSelected: _handleMenuItemClick,
// //             itemBuilder: (BuildContext context) {
// //               return [
// //                 const PopupMenuItem<String>(
// //                   value: 'createFolder',
// //                   child: Text('Create Folder'),
// //                 ),
// //                 const PopupMenuItem<String>(
// //                   value: 'createFile',
// //                   child: Text('Create File'),
// //                 ),
// //                 const PopupMenuItem<String>(
// //                   value: 'goToCalculator',
// //                   child: Text('Calculator'),
// //                 ),
// //                 const PopupMenuDivider(),
// //                 const PopupMenuItem<String>(
// //                   value: 'moreOptions',
// //                   child: ListTile(
// //                     contentPadding: EdgeInsets.zero,
// //                     leading: Icon(Icons.more_horiz),
// //                     title: Text('More Options'),
// //                     trailing: Icon(Icons.keyboard_arrow_right),
// //                   ),
// //                 ),
// //               ];
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               // padding: const EdgeInsets.all(5),
// //               itemCount: _filesAndFolders.length,
// //               itemBuilder: (BuildContext context, int index) {
// //                 FileSystemEntity entity = _filesAndFolders[index];
// //                 return Container(
// //                   margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
// //                   color: (selectedItems.isEmpty
// //                       ? Color.fromARGB(255, 223, 218, 218)
// //                       : selectedColor(entity.path)),
// //                   child: ListTile(
// //                       horizontalTitleGap: 0,
// //                       // title: Text(entity.path.split('/').last),
// //                       leading:
// //                           Icon(entity is File ? Icons.file_open : Icons.folder),
// //                       iconColor: (entity is File
// //                           ? Color.fromARGB(255, 119, 100, 25)
// //                           : Color.fromARGB(255, 239, 156, 48)),
// //                       subtitle: Text(
// //                         (entity is File
// //                             ? fileSize(entity.path)
// //                             : itemsInFolder(entity.path)),
// //                         style: TextStyle(color: Colors.black),
// //                       ),
// //                       title: Text(
// //                         entity.path.split('/').last,
// //                         style: const TextStyle(
// //                           fontSize: 20,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       onTap: () {
// //                         // ignore: curly_braces_in_flow_control_structures
// //                         if (selectedItems.isEmpty) {
// //                           if (entity is File) {
// //                             _handleFileTap(entity);
// //                           } else if (entity is Directory) {
// //                             _loadFilesAndFolders();
// //                             Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                     builder: (context) => VaultPage(
// //                                           setdir: entity.path,
// //                                           title: 'Vault Page',
// //                                           itemToMoveAndCopy: itemToMoveAndCopy,
// //                                           copyOrMove: copyOrMove,
// //                                         )));
// //                             // itemToMoveAndCopy=[];
// //                             // _refreshVaultPage();
// //                           }
// //                         } else {
// //                           debugPrint('On Tap Adding Selected Items..........');
// //                           selectedView(entity);
// //                         }
// //                       },
// //                       onLongPress: () {
// //                         debugPrint('On Tap Adding Selected Items..........');
// //                         selectedView(entity);
// //                       }),
// //                 );
// //               },
// //             ),
// //           ),
// //           if (selectedItems.isNotEmpty)
// //             Container(
// //               height: 55,
// //               color: Colors.white,
// //               child: Row(
// //                 children: [
// //                   Expanded(
// //                     child: IconButton(
// //                       icon: const Icon(Icons.file_copy_outlined),
// //                       onPressed: () {
// //                         setState(() {
// //                           itemToMoveAndCopy = selectedItems;
// //                           selectedItems = [];
// //                           copyOrMove = "copy";
// //                           debugPrint("Copying.........$copyOrMove....");
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: IconButton(
// //                       icon: const Icon(Icons.cut),
// //                       onPressed: () {
// //                         itemToMoveAndCopy = selectedItems;
// //                         setState(() {
// //                           selectedItems = [];
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: IconButton(
// //                       icon: const Icon(Icons.edit),
// //                       onPressed: () {
// //                         setState(() {
// //                           selectedItems = [];
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: IconButton(
// //                       icon: const Icon(Icons.delete),
// //                       onPressed: () {
// //                         setState(() {
// //                           itemToMoveAndCopy = selectedItems;
// //                           selectedItems = [];
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: IconButton(
// //                       icon: const Icon(Icons.clear),
// //                       onPressed: () {
// //                         setState(() {
// //                           selectedItems = [];
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           if (itemToMoveAndCopy.isNotEmpty)
// //             Container(
// //                 height: 55,
// //                 color: Colors.white,
// //                 child: Row(
// //                   children: [
// //                     Expanded(
// //                       child: IconButton(
// //                         icon: const Icon(Icons.clear),
// //                         onPressed: () {
// //                           setState(() {
// //                             widget.itemToMoveAndCopy = [];
// //                             itemToMoveAndCopy = [];
// //                             selectedItems = [];
// //                             _refreshVaultPage();
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: IconButton(
// //                         icon: const Icon(Icons.check),
// //                         onPressed: () {
// //                           setState(() {
// //                             debugPrint('copyOrMove string: $copyOrMove');
// //                             if (copyOrMove == "copy") copyItems();
// //                             itemToMoveAndCopy = [];
// //                             widget.itemToMoveAndCopy = [];
// //                             copyOrMove = "";
// //                             widget.copyOrMove = "";
// //                              movedOrCopied();
// //                             _refreshVaultPage();

// //                             // if (copyOrMove == "move") moveItems();
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                   ],
// //                 ))
// //         ],
// //       ),
// //       floatingActionButton: Container(
// //         margin: ((selectedItems.isEmpty && itemToMoveAndCopy.isEmpty)
// //             ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
// //             : const EdgeInsets.fromLTRB(0, 0, 0, 45)),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.end,
// //           children: [
// //             Container(
// //               margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
// //               child: FloatingActionButton(
// //                 onPressed: _goToCalculator,
// //                 tooltip: 'Calculator',
// //                 child: const Icon(Icons.calculate),
// //               ),
// //             ),
// //             FloatingActionButton(
// //               onPressed: () async {
// //                 final result =
// //                     await FilePicker.platform.pickFiles(allowMultiple: true);
// //                 if (result == null) {
// //                   debugPrint('No files selected.');
// //                   return;
// //                 }

// //                 for (var file in result.files) {
// //                   File newFile = File(
// //                     "${widget.setdir}/${file.name}",
// //                   );
// //                   File(file.path!).copy(newFile.path);
// //                 }
// //                 _refreshVaultPage();
// //               },
// //               tooltip: 'Add file',
// //               child: const Icon(Icons.add),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   } // @overide Build()

// //   void copyItems() {
// //     for (final itemPath in itemToMoveAndCopy) {
// //       final item = File(itemPath.path);
// //       if (item.existsSync()) {
// //         final destinationPath = '$currentPath/${item.uri.pathSegments.last}';
// //         item.copySync(destinationPath);
// //         debugPrint('Copied: ${itemPath.path} to $destinationPath');
// //       } else {
// //         debugPrint('File/Folder does not exist: ${itemPath.path}');
// //       }
// //     }
// //   }

// //   void _handleFileTap(File file) {
// //     OpenFile.open(file.path);
// //   }

// //   Future<void> _loadFilesAndFolders() async {
// //     Directory directory = Directory(widget.setdir);
// //     setState(() {
// //       _filesAndFolders = directory.listSync();
// //     });
// //   }

// //   void saveFile(PlatformFile file) {
// //     // appStorage = await getApplicationDocumentsDirectory();
// //     File newFile = File(
// //       "${widget.setdir}/${file.name}",
// //     );
// //     File(file.path!).copy(newFile.path);
// //   }

// //   void _refreshVaultPage() {
// //     setState(() {
// //       refreshVaultPage = true;
// //     });
// //   }

// //   void _goToCalculator() {
// //     setState(() {
// //       goToCalculator = true;
// //     });
// //   }

// //   Future<void> createFolder([String? inputFileFolder]) async {
// //     // var tmp = await _popUpInput(context, "Create Folder");
// //     // appStorage = await getApplicationDocumentsDirectory();
// //     final Directory newDirectory =
// //         Directory("${widget.setdir}/$inputFileFolder");

// //     debugPrint("Folder creat check: ${widget.setdir}/$inputFileFolder");
// //     // ignore: use_build_context_synchronousl
// //     if (newDirectory.existsSync()) {
// //       debugPrint('Directory already exists.');
// //     } else {
// //       newDirectory.createSync();
// //       _refreshVaultPage();
// //       debugPrint('Directory created successfully.');
// //     }
// //   }

// //   Future<void> createFile([String? inputFileFolder]) async {
// //     // var tmp = await _popUpInput(context, "Create Folder");
// //     // appStorage = await getApplicationDocumentsDirectory();
// //     String filePath = "${widget.setdir}/$inputFileFolder";

// //     File file = File(filePath);

// //     try {
// //       file.createSync(); // Create the file synchronously

// //       if (file.existsSync()) {
// //         _refreshVaultPage();
// //         debugPrint('File created successfully at: $filePath');
// //       } else {
// //         debugPrint('File creation failed.');
// //       }
// //     } catch (e) {
// //       debugPrint('An error occurred: $e');
// //     }
// //   }

// //   void _popUpInput(BuildContext context, String txt) {
// //     TextEditingController textEditingController2 = TextEditingController();
// //     final textFieldBorder = OutlineInputBorder(
// //       borderSide: const BorderSide(
// //         color: Color.fromARGB(255, 44, 44, 44),
// //         width: 3,
// //         style: BorderStyle.solid,
// //       ),
// //       borderRadius: BorderRadius.circular(7),
// //     );
// //     final threeDButton = BoxDecoration(
// //       borderRadius: BorderRadius.circular(8),
// //       gradient: const LinearGradient(
// //         colors: [
// //           Color.fromARGB(255, 112, 113, 112),
// //           Color.fromARGB(255, 63, 65, 63)
// //         ],
// //         begin: Alignment.topCenter,
// //         end: Alignment.bottomCenter,
// //       ),
// //       boxShadow: [
// //         BoxShadow(
// //           color: Colors.black.withOpacity(0.3),
// //           blurRadius: 5.0,
// //           offset: const Offset(0, 3),
// //         ),
// //       ],
// //     );
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           backgroundColor: const Color.fromARGB(255, 97, 96, 96),
// //           contentTextStyle: const TextStyle(
// //             color: Colors.black,
// //           ),
// //           title: Text(txt),
// //           content: Container(
// //             width: 400,
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Row(
// //                   children: [
// //                     Expanded(
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                           // border: ,
// //                           color: const Color.fromARGB(255, 91, 126, 78),
// //                           borderRadius: BorderRadius.circular(5),
// //                         ),
// //                         margin: const EdgeInsets.all(8),
// //                         height: 75,
// //                         width: 100,
// //                         // width: 370,
// //                         child: TextField(
// //                           textAlignVertical: TextAlignVertical.bottom,
// //                           style: const TextStyle(
// //                             color: Colors.black,
// //                             fontSize: 30,
// //                           ),
// //                           decoration: InputDecoration(
// //                             hintText: "Name",
// //                             hintStyle: const TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 30,
// //                             ),
// //                             enabledBorder: textFieldBorder,
// //                             focusedBorder: textFieldBorder,
// //                           ),
// //                           controller: textEditingController2,
// //                           // textAlign: TextAlign.end,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       decoration: threeDButton,
// //                       margin: const EdgeInsets.only(top: 15),
// //                       child: TextButton(
// //                           style: const ButtonStyle(
// //                             minimumSize:
// //                                 MaterialStatePropertyAll(Size(100, 45)),
// //                           ),
// //                           onPressed: () {
// //                             setState(() {
// //                               Navigator.pop(context);
// //                             });
// //                           },
// //                           child: const Text(
// //                             "Cancel",
// //                             style: TextStyle(
// //                                 fontSize: 20,
// //                                 color: Color.fromARGB(255, 245, 241, 241)),
// //                           )),
// //                     ),
// //                     Container(
// //                       decoration: threeDButton,
// //                       margin: const EdgeInsets.only(top: 15),
// //                       child: TextButton(
// //                           style: const ButtonStyle(
// //                             minimumSize:
// //                                 MaterialStatePropertyAll(Size(100, 45)),
// //                           ),
// //                           onPressed: () {
// //                             setState(() {
// //                               var inputFileFolder = textEditingController2.text;
// //                               if (txt == "Create Folder") {
// //                                 createFolder(inputFileFolder);
// //                               }
// //                               if (txt == "Create File") {
// //                                 createFile(inputFileFolder);
// //                               }
// //                               Navigator.pop(context);
// //                             });
// //                           },
// //                           child: const Text(
// //                             "Create",
// //                             style: TextStyle(
// //                                 fontSize: 20,
// //                                 color: Color.fromARGB(255, 245, 241, 241)),
// //                           )),
// //                     ),
// //                   ],
// //                 ) // Add more options as needed
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Future<void> _handleMenuItemClick(String value) async {
// //     // Handle the clicked menu item
// //     // debugPrint('Clicked: $value');
// //     if (value == 'createFolder') {
// //       // createFolder();
// //       _popUpInput(context, "Create Folder");
// //     }
// //     if (value == 'goToCalculator') {
// //       _goToCalculator();
// //     }
// //     if (value == 'createFile') {
// //       _popUpInput(context, "Create File");
// //     }
// //   }

// //   String itemsInFolder(String path) {
// //     String directoryPath = path; // Replace with the actual directory path

// //     int fileCount = 0;
// //     int folderCount = 0;

// //     Directory directory = Directory(directoryPath);
// //     if (directory.existsSync()) {
// //       directory.listSync().forEach((entity) {
// //         if (entity is File) {
// //           fileCount++;
// //         } else if (entity is Directory) {
// //           folderCount++;
// //         }
// //       });

// //       // debugPrint('Number of files: $fileCount');
// //       // debugPrint('Number of folders: $folderCount');
// //     } else {
// //       debugPrint('Directory not found.');
// //     }
// //     return '$folderCount Folders/$fileCount Files';
// //   }

// //   String fileSize(String path) {
// //     if (path == "") return "";

// //     var file = File(path);
// //     var size = file.lengthSync();
// //     String Size = size >= 1000000000
// //         ? '${(size / 1000000000).toStringAsFixed(2)} GB'
// //         : (size >= 1000000
// //             ? '${(size / 1000000).toStringAsFixed(2)} MB'
// //             : (size >= 1000
// //                 ? '${(size / 1000).toStringAsFixed(2)} KB'
// //                 : "0 b"));
// //     return Size;
// //   }

// //   selectedView(FileSystemEntity entity) {
// //     setState(() {
// //       bool notSelected = true;
// //       for (FileSystemEntity item in selectedItems) {
// //         if (entity.path == item.path) {
// //           selectedItems.remove(entity);
// //           notSelected = false;
// //           break; // Exit the loop when the string is found
// //         }
// //       }
// //       if (notSelected) selectedItems.add(entity);
// //     });
// //   }

// //   selectedColor(String path) {
// //     for (FileSystemEntity item in selectedItems) {
// //       if (path == item.path) {
// //         return Colors.blue;
// //         break; // Exit the loop when the string is found
// //       }
// //     }
// //   }
// // }


// import 'package:path/path.dart' as path;

// void main() {
//   String directoryPathA = '/path/to/directoryA';
  
//   // Get the parent directory of directoryPathA
//   String parentDirectoryPathB = path.dirname(directoryPathA);
  
//   print('Directory A: $directoryPathA');
//   print('Parent Directory B: $parentDirectoryPathB');
// }

