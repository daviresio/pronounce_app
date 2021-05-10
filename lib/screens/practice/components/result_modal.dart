import 'package:flutter/material.dart';
import 'package:pronounce_app/components/pronounce_button.dart';
import 'package:pronounce_app/components/pronounce_circle_progress_indicator.dart';
import 'package:pronounce_app/components/pronounce_icon_button.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_enums.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultModal extends StatelessWidget {
  final SpeechScore speechScore;
  final int value;

  const ResultModal({required this.speechScore, required this.value});

  Widget _header(ResultModalVariation style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        style.headerText,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PronounceIconButton(
              icon: PronounceIcons.headphones_light,
              onTap: () {},
            ),
            PronounceIconButton(
              icon: PronounceIcons.share_light,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var style = _styleVariations(context: context, speechScore: speechScore);

    return Container(
      padding: EdgeInsets.all(PronounceSpacing.medium1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(PronounceRadius.huge),
        color: PronounceColors.white,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          _header(style),
          Container(
            padding: EdgeInsets.all(PronounceSpacing.medium1),
            child: Divider(height: 0.5),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: PronounceSpacing.medium1),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .youSoundLikeANative
                      .replaceFirst('REPLACE', '$value%'),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: PronounceColors.textSecundaryColor),
                ),
                // PronounceCircleProgressIndicator(value: value),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(PronounceSpacing.medium1),
            padding: EdgeInsets.all(PronounceSpacing.small1),
            decoration: BoxDecoration(
              color: PronounceColors.lightGray,
              borderRadius: BorderRadius.circular(PronounceRadius.medium),
            ),
            child: Text(
              AppLocalizations.of(context)!.clickOnEachWord,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: PronounceColors.textSecundaryColor),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: PronounceSpacing.medium1),
            child: PronounceButton(
              label: AppLocalizations.of(context)!.tryAgain,
            ),
          ),
          Container(
            padding: EdgeInsets.all(PronounceSpacing.medium1),
            child: PronounceButton(
              label: AppLocalizations.of(context)!.tryANewWord,
            ),
          ),
        ],
      ),
    );
  }
}

ResultModalVariation _styleVariations({
  required BuildContext context,
  required SpeechScore speechScore,
}) {
  var textStyle = Theme.of(context).textTheme.headline2!;

  switch (speechScore) {
    case SpeechScore.good:
      return ResultModalVariation(
        headerText: Text(
          AppLocalizations.of(context)!.great,
          style: textStyle.copyWith(color: PronounceColors.green),
        ),
        color: PronounceColors.green,
      );
    case SpeechScore.regular:
      return ResultModalVariation(
        headerText: Text(
          AppLocalizations.of(context)!.almostCorrect,
          style: textStyle.copyWith(color: PronounceColors.warningDark),
        ),
        color: PronounceColors.warningDark,
      );
    case SpeechScore.bad:
      return ResultModalVariation(
        headerText: Text(
          AppLocalizations.of(context)!.tryAgain,
          style: textStyle.copyWith(color: PronounceColors.dangerDark),
        ),
        color: PronounceColors.dangerDark,
      );
  }
}

class ResultModalVariation {
  final Text headerText;
  final Color color;

  ResultModalVariation({
    required this.headerText,
    required this.color,
  });
}
