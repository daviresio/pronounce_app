import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_model.freezed.dart';
part 'dictionary_model.g.dart';

@freezed
class DictionaryModel with _$DictionaryModel {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory DictionaryModel({
    required List<Map<String, dynamic>> entries,
  }) = _DictionaryModel;

  factory DictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryModelFromJson(json);
}

@freezed
class DictionaryEntryModel with _$DictionaryEntryModel {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory DictionaryEntryModel({
    required String entry,
    required List<DictionaryPronunciationModel> pronunciations,
    required List<String> hyphenations,
    required Map<String, dynamic> interpretations,
    required List<DictionaryLexemeModel> lexemes,
    required List<String> license,
    required List<String> sourceUrls,
  }) = _DictionaryEntryModel;

  factory DictionaryEntryModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryEntryModelFromJson(json);
}

@freezed
class DictionaryPronunciationModel with _$DictionaryPronunciationModel {
  @JsonSerializable()
  factory DictionaryPronunciationModel({
    required List<Map<String, dynamic>> transcriptions,
    required List<Map<String, dynamic>> audio,
    required List<Map<String, dynamic>> context,
  }) = _DictionaryPronunciationModel;

  factory DictionaryPronunciationModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryPronunciationModelFromJson(json);
}

@freezed
class DictionaryLexemeModel with _$DictionaryLexemeModel {
  @JsonSerializable()
  factory DictionaryLexemeModel({
    required String lemma,
    required String partOfSpeech,
    required List<DictionarySenseModel> senses,
    required List<DictionaryFormModel> forms,
    required List<Map<String, dynamic>> synonymSets,
    required List<Map<String, dynamic>> antonymSets,
  }) = _DictionaryLexemeModel;

  factory DictionaryLexemeModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryLexemeModelFromJson(json);
}

@freezed
class DictionarySenseModel with _$DictionarySenseModel {
  @JsonSerializable()
  factory DictionarySenseModel({
    required String definition,
    required List<String> labels,
    required List<String> usageExamples,
  }) = _DictionarySenseModel;

  factory DictionarySenseModel.fromJson(Map<String, dynamic> json) =>
      _$DictionarySenseModelFromJson(json);
}

@freezed
class DictionaryFormModel with _$DictionaryFormModel {
  @JsonSerializable()
  factory DictionaryFormModel({
    required String form,
    required List<Map<String, dynamic>> grammar,
    required List<String> labels,
  }) = _DictionaryFormModel;

  factory DictionaryFormModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryFormModelFromJson(json);
}
