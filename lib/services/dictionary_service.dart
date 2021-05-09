import 'package:dio/dio.dart';
import 'package:pronounce_app/core/pronounce_error.dart';
import 'package:pronounce_app/models/dictionary/dictionary_model.dart';

class DictionaryService {
  static final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://lingua-robot.p.rapidapi.com/language/v1/entries/en',
      headers: {
        'x-rapidapi-key': '56087535bemshee25d6322d6b7d8p149addjsn3794be5d626e',
        'x-rapidapi-host': 'lingua-robot.p.rapidapi.com',
        'useQueryString': true,
      },
    ),
  );

  static Future<DictionaryModel?> getWordDescription({
    required String word,
  }) async {
    try {
      var result = await _dio.get('/$word');
      return DictionaryModel.fromJson(result.data);
    } catch (e, s) {
      PronounceError.recordError(e, s);
      return null;
    }
  }
}
