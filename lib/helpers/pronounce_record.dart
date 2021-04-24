import 'package:flutter_sound/flutter_sound.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';

class PronounceRecord {
  FlutterSoundRecorder? _myRecorder;
  FlutterAudioRecorder? recorder;
  PronounceRecord() : _myRecorder = FlutterSoundRecorder();
  String? filePath;

  Future<FlutterSoundRecorder?> openAudioSession() {
    return _myRecorder!.openAudioSession();
  }

  void dispose() {
    _myRecorder!.closeAudioSession();
    _myRecorder = null;
  }

  Future<void> record() async {
    filePath = (await PronounceFile.generateTempFilePath()) + '.wav';
    recorder = FlutterAudioRecorder(
      filePath!,
      audioFormat: AudioFormat.WAV,
    );
    await recorder!.initialized;
    await recorder!.start();
    await recorder!.current(channel: 0);
    // await _myRecorder!.startRecorder(
    //   toFile: filePath,
    //   codec: Codec.aacADTS,
    // );
  }

  Future<void> stopRecorder() async {
    await recorder!.stop();
    // return _myRecorder!.stopRecorder();
  }
}




  // FlutterSoundPlayer? _myPlayer;

  // PronounceRecord() : _myPlayer = FlutterSoundPlayer();

  // Future<FlutterSoundPlayer?> openAudioSession() {
  //   return _myPlayer!.openAudioSession();
  // }

  // void dispose() {
  //   _myPlayer!.closeAudioSession();
  //   _myPlayer = null;
  // }

  // Future<void> play() async {

  // }
