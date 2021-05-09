// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictionaryModel _$_$_DictionaryModelFromJson(Map<String, dynamic> json) {
  return _$_DictionaryModel(
    entries: (json['entries'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$_$_DictionaryModelToJson(_$_DictionaryModel instance) =>
    <String, dynamic>{
      'entries': instance.entries,
    };

_$_DictionaryEntryModel _$_$_DictionaryEntryModelFromJson(
    Map<String, dynamic> json) {
  return _$_DictionaryEntryModel(
    entry: json['entry'] as String,
    pronunciations: (json['pronunciations'] as List<dynamic>)
        .map((e) =>
            DictionaryPronunciationModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    hyphenations: (json['hyphenations'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    interpretations: json['interpretations'] as Map<String, dynamic>,
    lexemes: (json['lexemes'] as List<dynamic>)
        .map((e) => DictionaryLexemeModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    license:
        (json['license'] as List<dynamic>).map((e) => e as String).toList(),
    sourceUrls:
        (json['sourceUrls'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DictionaryEntryModelToJson(
        _$_DictionaryEntryModel instance) =>
    <String, dynamic>{
      'entry': instance.entry,
      'pronunciations': instance.pronunciations,
      'hyphenations': instance.hyphenations,
      'interpretations': instance.interpretations,
      'lexemes': instance.lexemes,
      'license': instance.license,
      'sourceUrls': instance.sourceUrls,
    };

_$_DictionaryPronunciationModel _$_$_DictionaryPronunciationModelFromJson(
    Map<String, dynamic> json) {
  return _$_DictionaryPronunciationModel(
    transcriptions: (json['transcriptions'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    audio: (json['audio'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    context: (json['context'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$_$_DictionaryPronunciationModelToJson(
        _$_DictionaryPronunciationModel instance) =>
    <String, dynamic>{
      'transcriptions': instance.transcriptions,
      'audio': instance.audio,
      'context': instance.context,
    };

_$_DictionaryLexemeModel _$_$_DictionaryLexemeModelFromJson(
    Map<String, dynamic> json) {
  return _$_DictionaryLexemeModel(
    lemma: json['lemma'] as String,
    partOfSpeech: json['partOfSpeech'] as String,
    senses: (json['senses'] as List<dynamic>)
        .map((e) => DictionarySenseModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    forms: (json['forms'] as List<dynamic>)
        .map((e) => DictionaryFormModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    synonymSets: (json['synonymSets'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    antonymSets: (json['antonymSets'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$_$_DictionaryLexemeModelToJson(
        _$_DictionaryLexemeModel instance) =>
    <String, dynamic>{
      'lemma': instance.lemma,
      'partOfSpeech': instance.partOfSpeech,
      'senses': instance.senses,
      'forms': instance.forms,
      'synonymSets': instance.synonymSets,
      'antonymSets': instance.antonymSets,
    };

_$_DictionarySenseModel _$_$_DictionarySenseModelFromJson(
    Map<String, dynamic> json) {
  return _$_DictionarySenseModel(
    definition: json['definition'] as String,
    labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
    usageExamples: (json['usageExamples'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_DictionarySenseModelToJson(
        _$_DictionarySenseModel instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'labels': instance.labels,
      'usageExamples': instance.usageExamples,
    };

_$_DictionaryFormModel _$_$_DictionaryFormModelFromJson(
    Map<String, dynamic> json) {
  return _$_DictionaryFormModel(
    form: json['form'] as String,
    grammar: (json['grammar'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DictionaryFormModelToJson(
        _$_DictionaryFormModel instance) =>
    <String, dynamic>{
      'form': instance.form,
      'grammar': instance.grammar,
      'labels': instance.labels,
    };
