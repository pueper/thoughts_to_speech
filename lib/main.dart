// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/personalinfo.dart';
import 'home.dart';
import 'objects.dart';
import 'newupload.dart';
import 'favorites.dart';
import 'ownuploads.dart';
import 'phrases.dart';
import 'temp.dart';
import 'categorylist.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thoughts to speech app',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/objects': (context) => const Objects(),
        '/temp': (context) => const Temp(),
        '/newupload': (context) => const NewUpload(),
        '/favorites': (context) => const Favorites(),
        '/ownuploads': (context) => const OwnUploads(),
        '/phrases': (context) => const Phrases(),
        '/personalinfo' : (context) => const PersonalInfo(),
        '/categorylist' : (context) => const Categorylist()
      },
    );
  }
}

