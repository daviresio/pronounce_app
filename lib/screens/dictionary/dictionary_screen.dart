import 'package:flutter/material.dart';
import 'package:pronounce_app/components/pronounce_ui.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pronounce_app/core/pronounce_text.dart';

class DictionaryScreen extends StatelessWidget {
  Widget _box({
    required String title,
    required String description,
    required void Function() onTap,
    required Color colorBottom,
    required Color colorTop,
  }) {
    return Flexible(
      child: Container(
        height: 180.0,
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
            Text(title),
            Text(description),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PronounceColors.primaryColor1,
      appBar: PronounceUI.appbar(
        title: AppLocalizations.of(context)!.dictionary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Text(
              AppLocalizations.of(context)!.whatDoYouWantSpeak,
              style: PronounceText.labelWhite1(),
            ),
            Row(
              children: [
                _box(
                  title: AppLocalizations.of(context)!.speak,
                  description: AppLocalizations.of(context)!
                      .pronounceYourPhraseToCheckYourScore,
                  onTap: () {},
                  colorBottom: PronounceColors.blueMedium,
                  colorTop: PronounceColors.blueLight,
                ),
                SizedBox(width: 16),
                _box(
                  title: AppLocalizations.of(context)!.scanImage,
                  description: AppLocalizations.of(context)!
                      .convertTheImageToTextAndPronounceThePhrases,
                  onTap: () {},
                  colorBottom: PronounceColors.pink,
                  colorTop: PronounceColors.orange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
