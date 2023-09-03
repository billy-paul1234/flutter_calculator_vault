import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_calculator_vault/set_password.dart';
import 'package:flutter_calculator_vault/vault_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key, required this.title});
  final String title;
  @override
  _InstructionPageState createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  final List<String> images = [
    "assets/setpassword.jpg", // Replace with your image asset paths
    "assets/calculator.jpg",
    "assets/authendication.jpg",
    "assets/vault.jpg",
  ];
  int _currentImage = 0;
  PageController _pageController = PageController(initialPage: 0);
  bool showPage2Content = false;
  final List<String> imagetxt = [
    "Set Your Password",
    "To open your Vault Long Press on 0",
    "Enter Your Password",
    "Now Your Vault is Opend",
  ];
  bool createSecretFolder = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_pageListener);
  }

  void togglePage2Content() {
    setState(() {
      showPage2Content = !showPage2Content;
    });
  }

  void _pageListener() {
    setState(() {
      _currentImage = _pageController.page?.round() ?? 0;
    });
  }

  void _goToPreviousPage() {
    if (_currentImage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNextPage() {
    if (_currentImage < images.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _createSecretFolder() async {
    // var tmp = await _popUpInput(context, "Create Folder");
    var appStorage = await getApplicationDocumentsDirectory();
    final Directory mySecretFolder =
        Directory("${appStorage.path}/MySecretFolder");
    final Directory documents =
        Directory("${appStorage.path}/MySecretFolder/Documents");
    final Directory images =
        Directory("${appStorage.path}/MySecretFolder/Images");
    final Directory videos =
        Directory("${appStorage.path}/MySecretFolder/Videos");

    debugPrint("Folder creat check: ${appStorage.path}/MySecretFolder");
    // ignore: use_build_context_synchronousl
    if (mySecretFolder.existsSync() ||
        documents.existsSync() ||
        images.existsSync() ||
        videos.existsSync()) {
      createSecretFolder = true;
      debugPrint('Directory already exists.');
    } else {
      mySecretFolder.createSync();
      documents.createSync();
      images.createSync();
      videos.createSync();

      createSecretFolder = true;
      debugPrint('Directory created successfully.');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!createSecretFolder) _createSecretFolder();

    // bool isFirstTime;
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
        title: Text('Instruction Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  // fit: BoxFit.cover,
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  height: 50,
                  child: Center(
                    child: Text(
                      imagetxt[_currentImage],
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    child: Column(
                      children: [
                        if (_currentImage + 1 != 1)
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.arrow_back),
                            onPressed: _goToPreviousPage,
                            disabledColor: Colors.grey,
                          ),
                      ],
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int j = 1; j < _currentImage + 1; j++)
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
                      for (int i = _currentImage + 1; i < images.length; i++)
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
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      if (_currentImage + 1 < images.length)
                        IconButton(
                          padding: EdgeInsets.only(left: 0),
                          color: Colors.white,
                          icon: Icon(Icons.arrow_forward),
                          onPressed: _goToNextPage,
                          disabledColor: Colors.grey,
                        ),
                      if (_currentImage + 1 == images.length)
                        Container(
                          width: 100,
                          height: 32,
                          margin: const EdgeInsets.all(8.0),
                          child: TextButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 244, 240, 240)),
                                foregroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 11, 10, 10)),
                              ),
                              onPressed: togglePage2Content,
                              // () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => const SetPassword(
                              //                 title: 'Set Password',
                              //               )));
                              // },
                              child: const Text(
                                "Start",
                                style: TextStyle(fontSize: 15),
                              )),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
