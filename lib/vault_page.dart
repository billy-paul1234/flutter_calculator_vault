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

  // ignore: unused_element
  // Future<bool> _askAllPermissions() async {
  //   // ignore: unused_local_variable
  //   bool allGranted;
  //   List<Permission> permissions = [
  //     Permission.storage,
  //     Permission.camera,
  //     Permission.photos,
  //     Permission.videos,
  //     Permission.contacts,
  //     Permission.accessMediaLocation,
  //     // Add more permissions here as needed
  //   ];

  //   Map<Permission, PermissionStatus> statuses = await permissions.request();

  //   allGranted = statuses.values.every((status) => status.isGranted);
  //   if (allGranted) {
  //     // All permissions granted, you can proceed with your app logic.
  //     return allGranted;
  //   } else {
  //     // Handle permission denial if needed.
  //     // ignore: unused_local_variable
  //     // var tmp = _askAllPermissions();
  //   }
  //   // _requestPermissions();
  //   return allGranted;
  // }

  Future<File> saveFile(PlatformFile file) async {
    appStorage = await getApplicationDocumentsDirectory();
    File newFile = File(
      "${appStorage.path}/${file.name}",
    );
    return File(file.path!).copy(newFile.path);
  }

  void _refreshVaultPage() {
    setState(() async {
      appStorage = await getApplicationDocumentsDirectory();
      refreshVaultPage = !refreshVaultPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (refreshVaultPage) {
      return VaultPage(
        title: 'Vault Page',
        setdir: appStorage.path,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
