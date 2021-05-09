import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_app/components/pronounce_icon_button.dart';
import 'package:pronounce_app/components/pronounce_ui.dart';
import 'package:pronounce_app/components/speech_button.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';
import 'package:pronounce_app/helpers/pronounce_text.dart';
import 'package:pronounce_app/models/dictionary/dictionary_model.dart';
import 'package:pronounce_app/screens/practice/pratice_controller.dart';

class PraticeScreen extends StatelessWidget {
  final String text;
  final List<DictionaryModel?> dictionaries;
  const PraticeScreen({
    required this.text,
    required this.dictionaries,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PraticeController());
    controller.textToSpeech = text;

    return Scaffold(
      backgroundColor: PronounceColors.lightGray,
      appBar: PronounceUI.appBarProgress(context),
      body: Container(
        height: MediaQuery.of(context).size.height - 100.00,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 25.0),
        padding: EdgeInsets.symmetric(
          horizontal: PronounceSpacing.medium1,
          vertical: PronounceSpacing.big1,
        ),
        decoration: BoxDecoration(
          color: PronounceColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(PronounceRadius.extraLarge),
            topRight: Radius.circular(PronounceRadius.extraLarge),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: PronounceSpacing.medium1),
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: PronounceColors.textSecundaryColor),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: PronounceSpacing.medium1),
                  child: Obx(
                    () {
                      var texts = <TextSpan>[];

                      controller.recognizedPhonemes.forEach((phonemes) {
                        var phomemesToSpan = phonemes
                            .map((e) => TextSpan(
                                text: e.phoneme,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: PronounceText.colorByScore(
                                      e.accuracyScore,
                                    ))))
                            .toList();

                        phomemesToSpan.add(TextSpan(text: ' '));

                        texts.addAll(phomemesToSpan);
                      });

                      return RichText(
                        text: TextSpan(
                          children: texts,
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    PronounceIconButton(
                      icon: PronounceIcons.volume_up_light,
                      onTap: () {},
                    ),
                    SizedBox(width: PronounceSpacing.small3),
                    PronounceIconButton(
                      icon: PronounceIcons.volume_light,
                      onTap: () {},
                    ),
                    SizedBox(width: PronounceSpacing.small3),
                    PronounceIconButton(
                      icon: PronounceIcons.bookmark_light,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(
                () => SpeechButton(
                  isRecording: controller.isRecording,
                  onTap: () {
                    if (controller.isRecording) {
                      controller.stopRecorder();
                    } else {
                      controller.startRecord();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
