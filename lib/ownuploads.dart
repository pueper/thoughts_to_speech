import 'package:flutter/material.dart';

class OwnUploads extends StatelessWidget {
  const OwnUploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Own Uploads'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: IconButton(
              icon: const Icon(Icons.app_registration, size: 30.0),
              onPressed: () {
                Navigator.pushNamed(context, '/Own Uploads');
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}