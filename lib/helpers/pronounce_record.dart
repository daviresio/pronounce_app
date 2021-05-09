import 'dart:convert';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';

class PronounceRecord {
  final rec = FlutterSoundRecorder();
  String? filePath;

  Future<void> openAudioSession() async {
    await checkPermissions();
    await rec.openAudioSession();
  }

  void dispose() {
    rec.closeAudioSession();
  }

  Future<void> startRecorder() async {
    filePath = (await PronounceFile.generateTempFilePath()) + '.wav';
    await rec.startRecorder(
      toFile: filePath!,
      codec: Codec.pcm16WAV,
    );
  }

  Future<String?> stopRecorder() async {
    await rec.stopRecorder();
    var path = filePath;
    filePath = null;
    return path;
  }

  Future<void> checkPermissions() async {
    if (!(await Permission.microphone.request().isGranted) ||
        !(await Permission.storage.request().isGranted)) {
      var statuses = await [
        Permission.microphone,
        Permission.storage,
      ].request();
      print(statuses[Permission.microphone]);
    }
  }
}
