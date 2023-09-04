// import 'package:flutter/material.dart';

// void showCopyingDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     barrierDismissible: false, // Prevent dismissing the dialog by tapping outside
//     builder: (BuildContext context) {
//       return const AlertDialog(
//         title: Text('Copying Files'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircularProgressIndicator(), // Show a loading indicator
//             SizedBox(height: 16.0), // Add some space
//             Text('Copying in progress...'), // Display a message
//           ],
//         ),
//       );
//     },
//   );
// }



import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // Define the content of the Bottom Sheet here
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () {
                  // Handle music selection
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Photos'),
                onTap: () {
                  // Handle photo selection
                  Navigator.pop(context);
                },
              ),
              // Add more items as needed
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            child: Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}

