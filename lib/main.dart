// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            Flexible(child: Container()),
            Container(
                child: Text("Hello world")
            ),
            Flexible(child: Container()),
            Center(
              child: Image.asset('C:/coding/thoughts_to_speech/assets/images/HelloThere.jpg'),
            )
          ],
        )
      ),
    );
  }
}