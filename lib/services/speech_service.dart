import 'dart:io';
import 'package:http/http.dart' as http;

class SpeechService {
  static Future<dynamic> speech({required String filePath}) async {
    var url = Uri.parse(
      'https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=en-US',
    );

    var headers = {
      'Ocp-Apim-Subscription-Key': '6beda8ccf30e45c494ac1a5813a9ea07',
      'Content-Type': 'audio/wav',
      'Accept': '*/*',
      'Transfer-Encoding': 'chunked',
    };

    try {
      var response = await http.post(url,
          body: File(filePath).readAsBytesSync(), headers: headers);
      print(response.body);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
