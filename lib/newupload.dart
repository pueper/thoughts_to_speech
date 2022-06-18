import 'package:flutter/material.dart';

class NewUpload extends StatelessWidget {
  const NewUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Upload'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Name of object or phrase:", textScaleFactor: 1.5,),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name...',
            ),
          ),
          const Text("Associated image:", textScaleFactor: 1.5,),
          ElevatedButton(onPressed: () {}, child: const Text("upload image")),
          const Text("Associated sound:", textScaleFactor: 1.5,),
          ElevatedButton(onPressed: () {}, child: const Text("upload sound")),
        ],
      )
    );
  }
}