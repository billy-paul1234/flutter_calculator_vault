import 'package:flutter/material.dart';
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

  // Future<void> _requestPermissions() async {
  //   List<Permission> permissions = [
  //     Permission.storage,
  //     Permission.camera,
  //     Permission.photos,
  //     Permission.videos,
  //     Permission.contacts,
  //     Permission.accessMediaLocation,
  //     Permission.calendar,
  //     Permission.microphone,
  //     Permission.sms,
  //     Permission.audio,
  //     Permission.mediaLibrary,
  //     // Add more permissions here as needed
  //   ];

  //   Map<Permission, PermissionStatus> statuses = await permissions.request();

  //   // Check the permission statuses and handle accordingly
  //   if (statuses[Permission.storage]!.isGranted &&
  //       statuses[Permission.camera]!.isGranted) {
  //     // All permissions granted, proceed with your app logic.
  //   } else {
  //     // Handle permission denial if needed.
  //   }
  // }


  Future<void> _askAllPermissions() async {
    List<Permission> permissions = [
      Permission.storage,
      Permission.camera,
      // Add more permissions here as needed
    ];

    Map<Permission, PermissionStatus> statuses = await permissions.request();

    bool allGranted = statuses.values.every((status) => status.isGranted);

    if (allGranted) {
      // All permissions granted, you can proceed with your app logic.
    } else {
      // Handle permission denial if needed.
    }
  }
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }


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
                onPressed: () {
                  _askAllPermissions();
                  // _requestPermissions();
                },
                child: Text("Add Files")),
          ],
        ),
      ),
    );
  }
}
