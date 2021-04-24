import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pronounce_app/helpers/dio_firebase_performance_interceptor.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pronounce_app/helpers/pronounce_file.dart';

class SpeechService {
  static Future<dynamic> speech({required String filePath}) async {
    var dio = Dio();
    var file = File(filePath);
    var url =
        'https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=en-US';

    var urlFile = 'https://daviresio.com/audios';

    var options = Options(
      headers: {
        'Ocp-Apim-Subscription-Key': '6beda8ccf30e45c494ac1a5813a9ea07',
        'Content-Type': 'audio/wav',
        'Accept': '*/*',
        'Transfer-Encoding': 'chunked',
      },
    );
    var formData = FormData.fromMap({
      'audio': await MultipartFile.fromFile(filePath, filename: 'audio.wav'),
    });

    final performanceInterceptor = DioFirebasePerformanceInterceptor();
    dio.interceptors.add(performanceInterceptor);
    try {
      var fileResponse = await dio.post(urlFile,
          data: formData, options: Options(responseType: ResponseType.bytes));
      var a = fileResponse.data;
      var newFile = File(await PronounceFile.generateTempFilePath());
      newFile.writeAsBytesSync(a);
      print(newFile.existsSync());
      var audioPlayer = AudioPlayer();
      await audioPlayer.play(newFile.path, isLocal: true);
      await Future.delayed(Duration(seconds: 3));
      var response = await dio.post(url, options: options, data: a);
      print(response);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
