import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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
    setState(() async {
      debugPrint(
          'No files selected!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!.');
      // appStorage = await getApplicationDocumentsDirectory();
      refreshVaultPage = true;
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 244, 240, 240)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 11, 10, 10)),
                      ),
                      onPressed: () {
                        setState(() {
                          var inputFileFolder = textEditingController2.text;
                          if (txt == "Create Folder")
                            createFolder(inputFileFolder);
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Create")),
                ],
              ) // Add more options as needed
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
      // createFolder();
      _popUpInput(context, "Create Folder");
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
            color: const Color.fromARGB(255, 90, 91, 92),
            child: ListTile(
              // title: Text(entity.path.split('/').last),
              leading: Icon(entity is File ? Icons.file_present : Icons.folder),
              title: Text(entity.path.split('/').last),
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
      floatingActionButton: FloatingActionButton(
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
          setState(() {
            refreshVaultPage = true;
          });
          // _refreshVaultPage();
          // final file = result.files.first;
          // // ignore: unused_local_variable
          // // File tmp = await
          // saveFile(file);
          // setState(() {
          // _refreshVaultPage();
          // });
        },
        tooltip: 'Add file',
        child: const Icon(Icons.add),
      ),
    );
  }
}
