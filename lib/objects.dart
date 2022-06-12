import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';


class Objects extends StatelessWidget {
  const Objects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Objects'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: IconButton(
              icon: const Icon(Icons.apps, size: 30.0),
              onPressed: () {
                Navigator.pushNamed(context, '/categorylist');
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ), 
        body: SingleChildScrollView(
          child: Column(
            children: [],
          )
        ),
    );
  }
}