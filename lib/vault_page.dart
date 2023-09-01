import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_vault/calculator_page.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:file_selector/file_selector.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:math_expressions/math_expressions.dart';

// Future<void> main() async {

//   runApp(VaultPage(setdir: '/storage/emulated/0/', title: 'Vault Page',));
// }

class VaultPage extends StatefulWidget {
  VaultPage({super.key, required this.title, required this.setdir});
  String setdir;
  final String title;

  @override
  State<VaultPage> createState() => _VaultPageState();
}

class _VaultPageState extends State<VaultPage> {
  TextEditingController textEditingController = TextEditingController();
  List<FileSystemEntity> _filesAndFolders = [];
  int changeFolder = 0;
  bool refreshVaultPage = false;
  bool goToCalculator = false;
  var appStorage;
  // String inputFileFolder = "";

  @override
  void initState() {
    super.initState();
    _loadFilesAndFolders();
  }

  void _handleFileTap(File file) {
    OpenFile.open(file.path);
  }

  Future<void> _loadFilesAndFolders() async {
    Directory directory = Directory(widget.setdir);
    setState(() {
      _filesAndFolders = directory.listSync();
    });
  }

  void saveFile(PlatformFile file) {
    // appStorage = await getApplicationDocumentsDirectory();
    File newFile = File(
      "${widget.setdir}/${file.name}",
    );
    File(file.path!).copy(newFile.path);
  }

  void _refreshVaultPage() {
    setState(() {
      refreshVaultPage = true;
    });
  }

  void _goToCalculator() {
    setState(() {
      goToCalculator = true;
    });
  }

  Future<void> createFolder([String? inputFileFolder]) async {
    // var tmp = await _popUpInput(context, "Create Folder");
    appStorage = await getApplicationDocumentsDirectory();
    final Directory newDirectory =
        Directory("${widget.setdir}/$inputFileFolder");

    debugPrint("Folder creat check: ${widget.setdir}/$inputFileFolder");
    // ignore: use_build_context_synchronousl
    if (newDirectory.existsSync()) {
      debugPrint('Directory already exists.');
    } else {
      newDirectory.createSync();
      _refreshVaultPage();
      debugPrint('Directory created successfully.');
    }
  }

  void _popUpInput(BuildContext context, String txt) {
    TextEditingController textEditingController2 = TextEditingController();
    final textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 44, 44, 44),
        width: 3,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(7),
    );
    final threeDButton = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 112, 113, 112),
          Color.fromARGB(255, 63, 65, 63)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 5.0,
          offset: const Offset(0, 3),
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 97, 96, 96),
          contentTextStyle: const TextStyle(
            color: Colors.black,
          ),
          title: Text(txt),
          content: Container(
            width: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          // border: ,
                          color: const Color.fromARGB(255, 91, 126, 78),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: const EdgeInsets.all(8),
                        height: 75,
                        width: 100,
                        // width: 370,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.bottom,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                          decoration: InputDecoration(
                            hintText: textEditingController.text,
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            enabledBorder: textFieldBorder,
                            focusedBorder: textFieldBorder,
                          ),
                          controller: textEditingController2,
                          // textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: threeDButton,
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                          style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(100, 45)),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 245, 241, 241)),
                          )),
                    ),
                    Container(
                      decoration: threeDButton,
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                          style: const ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(100, 45)),
                          ),
                          onPressed: () {
                            setState(() {
                              var inputFileFolder = textEditingController2.text;
                              if (txt == "Create Folder")
                                createFolder(inputFileFolder);
                              Navigator.pop(context);
                            });
                          },
                          child: const Text(
                            "Create",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 245, 241, 241)),
                          )),
                    ),
                  ],
                ) // Add more options as needed
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _handleMenuItemClick(String value) async {
    // Handle the clicked menu item
    // print('Clicked: $value');
    if (value == 'createFolder') {
      // createFolder();
      _popUpInput(context, "Create Folder");
    }
    if (value == 'goToCalculator') {
      _goToCalculator();
    }
  }

  @override
  Widget build(BuildContext context) {
    String currentPath = widget.setdir;

    if (refreshVaultPage) {
      return VaultPage(
        title: 'Vault Page',
        setdir: widget.setdir,
      );
    }
    if (goToCalculator) {
      return const CalculatorPage(
        title: 'Calculator Page',
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 96, 96),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton<String>(
            onSelected: _handleMenuItemClick,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'createFolder',
                  child: Text('Create Folder'),
                ),
                const PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Create File'),
                ),
                const PopupMenuItem<String>(
                  value: 'goToCalculator',
                  child: Text('Calculator'),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem<String>(
                  value: 'moreOptions',
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.more_horiz),
                    title: Text('More Options'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
        // padding: const EdgeInsets.all(5),
        itemCount: _filesAndFolders.length,
        itemBuilder: (BuildContext context, int index) {
          FileSystemEntity entity = _filesAndFolders[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
            color: Colors.white,
            child: ListTile(
              horizontalTitleGap: 0,
              // title: Text(entity.path.split('/').last),
              leading: Icon(entity is File ? Icons.file_open : Icons.folder),
              iconColor: (entity is File
                  ? const Color.fromARGB(255, 208, 190, 120)
                  : Colors.orangeAccent),
              subtitle: Text(fileSize((entity is File ? entity.path : ""))),
              title: Text(
                entity.path.split('/').last,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                if (entity is File) {
                  _handleFileTap(entity);
                } else if (entity is Directory) {
                  _loadFilesAndFolders();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VaultPage(
                                setdir: entity.path,
                                title: 'Vault Page',
                              )));
                }
              },
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: FloatingActionButton(
              onPressed: _goToCalculator,
              tooltip: 'Calculator',
              child: const Icon(Icons.calculate),
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              final result =
                  await FilePicker.platform.pickFiles(allowMultiple: true);
              if (result == null) {
                debugPrint('No files selected.');
                return;
              }

              for (var file in result.files) {
                File newFile = File(
                  "${widget.setdir}/${file.name}",
                );
                File(file.path!).copy(newFile.path);
              }
              _refreshVaultPage();
            },
            tooltip: 'Add file',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

String fileSize(String path) {
  if (path == "") return "";

  var file = File(path);
  var size = file.lengthSync();
  String s = size >= 1000000000
      ? '${(size / 1000000000).toStringAsFixed(2)} GB'
      : (size >= 1000000
          ? '${(size / 1000000).toStringAsFixed(2)} MB'
          : (size >= 1000 ? '${(size / 1000).toStringAsFixed(2)} KB' : "0 b"));
  return s;
}
