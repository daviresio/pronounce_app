import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pronounce_app/components/pronounce_recording.dart';
import 'package:pronounce_app/components/pronounce_ui.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/screens/dictionary/dictionary_controller.dart';

class DictionaryScreen extends GetWidget {
  @override
  final DictionaryController controller = Get.put(DictionaryController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PronounceRecording(
        isRecording: controller.isRecording,
        onFinish: () => controller.setIsRecording(false),
        child: Scaffold(
          backgroundColor: PronounceColors.primaryColor1,
          appBar: PronounceUI.appbar(
            context,
            title: AppLocalizations.of(context)!.dictionary,
          ),
          body: Padding(
            padding: const EdgeInsets.all(PronounceSpacing.medium1),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: [
                Text(
                  AppLocalizations.of(context)!.whatDoYouWantSpeak,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: PronounceSpacing.medium1),
                Row(
                  children: [
                    _box(
                      context,
                      title: AppLocalizations.of(context)!.speak,
                      description: AppLocalizations.of(context)!
                          .pronounceYourPhraseToCheckYourScore,
                      icon: PronounceIcons.microphone_light,
                      onTap: controller.setIsRecording,
                      colorBottom: controller.isRecording
                          ? Colors.red
                          : PronounceColors.blueMedium,
                      colorTop: controller.isRecording
                          ? Colors.red
                          : PronounceColors.blueLight,
                    ),
                    SizedBox(width: 16),
                    _box(
                      context,
                      title: AppLocalizations.of(context)!.scanImage,
                      description: AppLocalizations.of(context)!
                          .convertTheImageToTextAndPronounceThePhrases,
                      icon: PronounceIcons.image_light,
                      onTap: () {},
                      colorBottom: PronounceColors.pink,
                      colorTop: PronounceColors.orange,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _box(
    context, {
    required String title,
    required String description,
    required IconData icon,
    required void Function() onTap,
    required Color colorBottom,
    required Color colorTop,
  }) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 222,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [
                colorBottom,
                colorTop,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: PronounceSpacing.small3),
              Icon(
                icon,
                size: 30,
                color: PronounceColors.white,
              ),
              SizedBox(height: PronounceSpacing.small3),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
