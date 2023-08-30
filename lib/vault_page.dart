import 'dart:io';

import 'package:file_picker/file_picker.dart';
// import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:math_expressions/math_expressions.dart';

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
  var appStorage;
  String inputFileFolder = "";

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

  Future<File> saveFile(PlatformFile file) async {
    // appStorage = await getApplicationDocumentsDirectory();
    File newFile = File(
      "${widget.setdir}/${file.name}",
    );
    return File(file.path!).copy(newFile.path);
  }

  void _refreshVaultPage() {
    setState(() async {
      // appStorage = await getApplicationDocumentsDirectory();
      refreshVaultPage = !refreshVaultPage;
    });
  }

  Future<void> createFolder() async {
    _popUpInput(context,"Create Folder");
    // appStorage = await getApplicationDocumentsDirectory();
    final Directory newDirectory = Directory("${widget.setdir}/$inputFileFolder");
    // ignore: use_build_context_synchronously
    if (!newDirectory.existsSync()) {
      newDirectory.createSync(recursive: true);
      debugPrint('Folder created: $inputFileFolder');
      setState(() {
      _refreshVaultPage();
      });
    } else {
      debugPrint('Folder already exists: $inputFileFolder');
    }
  }

  void _popUpInput(BuildContext context, String txt) {
    TextEditingController textEditingController2 = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(txt),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: textEditingController2,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
                decoration: const InputDecoration(hintText: "Name"),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      inputFileFolder = textEditingController2.text;
                      Navigator.pop(context); 
                    });
                  },
                  child: const Text("Create")) // Add more options as needed
            ],
          ),
        );
      },
    );
  }

  Future<void> _handleMenuItemClick(String value) async {
    // Handle the clicked menu item
    print('Clicked: $value');
    if (value == 'createFolder') {
      createFolder();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (refreshVaultPage) {
      return VaultPage(
        title: 'Vault Page',
        setdir: widget.setdir,
      );
    }

    return Scaffold(
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
            color: Colors.blue,
            child: ListTile(
              title: Text(entity.path.split('/').last),
              onTap: () {
                if (entity is File) {
                  _handleFileTap(entity);
                } else if (entity is Directory) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // // ignore: unused_local_variable
          // bool allGranted = await _askAllPermissions();
          final result =
              await FilePicker.platform.pickFiles(allowMultiple: true);
          // FilePickerResult? result = await FilePicker.platform.pickDirectory();
          if (result == null) return;
          final file = result.files.first;
          // ignore: unused_local_variable
          File tmp = await saveFile(file);
          _refreshVaultPage();
          // // ignore: use_build_context_synchronously
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => VaultPage(
          //               setdir: widget.setdir,
          //               title: 'Vault Page',
          //             )));
        },
        tooltip: 'Add file',
        child: const Icon(Icons.add),
      ),
    );
  }
}
