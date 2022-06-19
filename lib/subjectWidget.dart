import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:thoughts_to_speech/storage_helper.dart';

import 'main.dart';

class SubjectWidget extends StatelessWidget {

  String name;
  String image;
  String sound;

  SubjectWidget(this.name, this.image, this.sound, {Key? key}) : super(key: key);

  Future<void> playAudioFile(String audioFile) async {
    String audioasset = audioFile;
    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
    Uint8List soundbytes = bytes.buffer.asUint8List(
        bytes.offsetInBytes, bytes.lengthInBytes);
    await player.playBytes(soundbytes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 150,
      height: 150,
      child: Column(
        children: [
          Expanded(
            flex: 16,
            child: FullScreenWidget(
                child: Image.asset(
                  image,
                  width: 150,
                )
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
                name,
              textWidthBasis: TextWidthBasis.longestLine,
            )
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () async {await updateWidget(name, SubjectTypes.isFavorite);},
                ),
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  onPressed: () {playAudioFile(sound);},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
