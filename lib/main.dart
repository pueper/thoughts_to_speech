// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/personalinfo.dart';
import 'package:thoughts_to_speech/storage_helper.dart';
import 'home.dart';
import 'objects.dart';
import 'newupload.dart';
import 'favorites.dart';
import 'ownuploads.dart';
import 'phrases.dart';
import 'categorylist.dart';


void main() {
  runApp(const MyApp());
}

AudioPlayer player = AudioPlayer();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setupWrite();
    return MaterialApp(
      title: 'Thoughts to speech app',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/objects': (context) => const Objects(),
        '/newupload': (context) => const NewUpload(),
        '/favorites': (context) => const Favorites(),
        '/ownuploads': (context) => const OwnUploads(),
        '/phrases': (context) => Phrases(),
        '/personalinfo' : (context) => const PersonalInfo(),
        '/categorylist' : (context) => const Categorylist()
      },
    );
  }
}

