import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:math_expressions/math_expressions.dart';

class VaultPage extends StatefulWidget {
  const VaultPage({super.key, required this.title});
  final String title;

  @override
  State<VaultPage> createState() => _VaultPageState();
}

class _VaultPageState extends State<VaultPage> {
  TextEditingController textEditingController = TextEditingController();

  // ignore: unused_element
  Future<bool> _askAllPermissions() async {
    // ignore: unused_local_variable
    bool allGranted;
    List<Permission> permissions = [
      Permission.storage,
      Permission.camera,
      Permission.photos,
      Permission.videos,
      Permission.contacts,
      Permission.accessMediaLocation,
      // Add more permissions here as needed
    ];

    Map<Permission, PermissionStatus> statuses = await permissions.request();

    allGranted = statuses.values.every((status) => status.isGranted);
    if (allGranted) {
      // All permissions granted, you can proceed with your app logic.
      return allGranted;
    } else {
      // Handle permission denial if needed.
      // ignore: unused_local_variable
      // var tmp = _askAllPermissions();
    }
    // _requestPermissions();
    return allGranted;
  }

  Future<File> saveFile(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    File newFile = File("${appStorage.path}/${file.name}",);
    return File(file.path!).copy(newFile.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  // // ignore: unused_local_variable
                  // bool allGranted = await _askAllPermissions();
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;
                  final file = result.files.first;
                  await saveFile(file);
                },
                child: Text("Add Files")),
          ],
        ),
      ),
    );
  }
}
