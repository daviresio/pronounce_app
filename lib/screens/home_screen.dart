import 'dart:async';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

import 'package:speech_to_text/speech_to_text.dart' as stt;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String text = '';

  void statusListener(String status) {
    print(status);
  }

  void errorListener(SpeechRecognitionError error) {
    print(error);
  }

  void resultListener(SpeechRecognitionResult result) {
    print(result.recognizedWords);
    setState(() {
      text = result.recognizedWords;
    });
  }

  void recordSpeech() async {
    var speech = stt.SpeechToText();
    var available = await speech.initialize(
      onStatus: statusListener,
      onError: errorListener,
    );

    if (available) {
      await speech.listen(onResult: resultListener);
    } else {
      print('The user has denied the use of speech recognition.');
    }
    Timer(Duration(seconds: 5), () {
      speech.stop();
    });
  }

  @override
  void initState() {
    super.initState();
    try {
      recordSpeech();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
