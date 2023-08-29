import 'package:flutter/material.dart';
import 'package:flutter_calculator_vault/calculator_page.dart';
import 'package:flutter_calculator_vault/set_password.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'calculator_page.dart';
// import 'package:math_expressions/math_expressions.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key, required this.title});
  final String title;

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  TextEditingController textEditingController = TextEditingController();
  String _imagepath = "assets/setpassword.jpg";
  int buttonnum = 1;
  String imagetxt = "Set Your Password";
  int totalimages = 4;
  var allignbutton = MainAxisAlignment.end;
  bool showPage2Content = false;

  void togglePage2Content() {
    setState(() {
      showPage2Content = !showPage2Content;
    });
  }

  void backimage() {
    setState(() {
      buttonnum--;
      if (buttonnum == 1) allignbutton = MainAxisAlignment.end;
      if (buttonnum == 1) {
        imagetxt = "Set Your Password";
        _imagepath = "assets/setpassword.jpg";
      }

      if (buttonnum == 2) {
        imagetxt = "To open your Vault Long Press on 0";
        _imagepath = "assets/calculator.jpg";
      }
      if (buttonnum == 3) {
        imagetxt = "Enter Your Password";
        _imagepath = "assets/authendication.jpg";
      }
      if (buttonnum == 4) {
        imagetxt = "Now Your Vault is Opend";
        _imagepath = "assets/vault.jpg";
      }
    });
  }

  void nextimage() {
    setState(() {
      if (buttonnum < totalimages) buttonnum++;
      allignbutton = MainAxisAlignment.spaceBetween;
      if (buttonnum == 2) {
        imagetxt = "To open your Vault Long Press on 0";
        _imagepath = "assets/calculator.jpg";
      }
      if (buttonnum == 3) {
        imagetxt = "Enter Your Password";
        _imagepath = "assets/authendication.jpg";
      }
      if (buttonnum == 4) {
        imagetxt = "Now Your Vault is Opend";
        _imagepath = "assets/vault.jpg";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isFirstTime;
    if (showPage2Content) {
      return const SetPassword(title: 'Set Password');
    }
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _setFirstTimeFlag() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('first_time', false);
    }

    _setFirstTimeFlag(); // Store flag when visiting first page


    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 2, 2),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              _imagepath,
              height: 500,
              width: 500,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    height: 50,
                    child: Center(
                      child: Text(
                        imagetxt,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 251, 249, 249)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 1; j < buttonnum; j++)
                  Container(
                    margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                    child: const Icon(
                      size: 10,
                      color: Colors.white,
                      Icons.circle_outlined,
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                  child: const Icon(
                    size: 10,
                    color: Colors.white,
                    Icons.circle,
                  ),
                ),
                for (int i = buttonnum; i < totalimages; i++)
                  Container(
                    margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                    child: const Icon(
                      size: 10,
                      color: Colors.white,
                      Icons.circle_outlined,
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: allignbutton,
              children: [
                if (buttonnum != 1)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 241, 237, 237)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 8, 7, 7)),
                        ),
                        onPressed: backimage,
                        child: const Text(
                          "Previous",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                if (buttonnum < totalimages)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 244, 240, 240)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 11, 10, 10)),
                        ),
                        onPressed: nextimage,
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                if (buttonnum == totalimages)
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 244, 240, 240)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 11, 10, 10)),
                        ),
                        onPressed: 
                        // () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const SetPassword(
                        //                 title: 'Set Password',
                        //               )));
                        // },
                        togglePage2Content,
                        child: const Text(
                          "Done",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
