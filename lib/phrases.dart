import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

AudioPlayer player = AudioPlayer();



class Phrases extends StatelessWidget {
  const Phrases({Key? key}) : super(key: key);

  Future<void> PlayAudioFile(audioFile) async {
    String audioasset = audioFile;
    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
    Uint8List soundbytes = bytes.buffer.asUint8List(
        bytes.offsetInBytes, bytes.lengthInBytes);
    await player.playBytes(soundbytes);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            PlayAudioFile("assets/audio/test_audio.mp3");
          },
          child: const Text('test audio'),
        ),
      ),
    );
  }
}