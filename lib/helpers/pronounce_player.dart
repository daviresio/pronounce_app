import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';

class PronouncePlayer {
  static final AudioPlayer audioPlayer = AudioPlayer();

  static Future<bool> playBytes(Uint8List bytes) async {
    var result = await audioPlayer.playBytes(bytes);
    return result == 1;
  }

  static Future<bool> playLocal(String filePath) async {
    var result = await audioPlayer.play(filePath, isLocal: true);
    return result == 1;
  }
}
